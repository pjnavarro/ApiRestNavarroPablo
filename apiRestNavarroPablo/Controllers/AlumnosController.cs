using Microsoft.AspNetCore.Mvc;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.EntityFrameworkCore;
using apiRestNavarroPablo.Contexts;
using apiRestNavarroPablo.Entities;
using System.Threading;

namespace apiRestNavarroPablo.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class AlumnosController: ControllerBase
    {
        private readonly ApplicationDbContext context;

        public AlumnosController(ApplicationDbContext context)
        {
            this.context = context;
        }

        [HttpGet]
        public async Task<ActionResult<IEnumerable<Alumno>>> Get()
        {
            return await context.Alumnos.ToListAsync();
        }

        [HttpGet("{id}", Name = "ObtenerAlumnos")]
        public async Task<ActionResult<Alumno>> Get(int id)
        {
            var alumno = await context.Alumnos.FirstOrDefaultAsync(x => x.id == id);

            if (alumno == null)
            {
                return NotFound();
            }
            return alumno;
        }

        [HttpPost]
        public async Task <ActionResult> Post ([FromBody] Alumno alumno)
        {
            context.Add(alumno);
            await context.SaveChangesAsync();
            return new CreatedAtRouteResult("ObtenerAlumnos", new { id = alumno.id }, alumno);
        }

        [HttpPut("{id}")]
        public async Task <ActionResult> Put(int id, [FromBody] Alumno Value)
        {
            if (id != Value.id)
            {
                return BadRequest();
            }
            context.Entry(Value).State = EntityState.Modified;
            await context.SaveChangesAsync();
            return Ok();
        }

        [HttpDelete("{id}")]
        public async Task<ActionResult <Alumno>> Delete(int id)
        {
            var alumno = await context.Alumnos.FirstOrDefaultAsync(x => x.id == id);

            if (alumno == null)
            {
                return NotFound();
            }

            context.Remove(alumno);
            await context.SaveChangesAsync();
            return Ok (alumno);
        }
    }
}
