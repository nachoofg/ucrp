<script>
  import { createUser } from "../services/sqlite/user";
  import { Button } from "./base/button";
  import { Input } from "./base/input";
  let usernamep = "";
  let emailp = "";
  let passwordp = "";

  function handler() {
    console.error("svelte", usernamep, emailp, passwordp);
    createUser(usernamep, emailp, passwordp);
  }
</script>

<div class="min-h-screen flex items-center justify-center py-12 px-4 sm:px-6 lg:px-8">
  <div class="max-w-md w-full space-y-8 p-6 rounded-xl shadow-lg bg-blue-950">
    <div>
      <h1 class="mt-6 text-center text-3xl font-extrabold text-white">
        Registrarse
      </h1>
      <p class="mt-2 text-center text-sm text-white/80">
        Ya tenes una cuenta?
        <a href="/login" class="font-medium text-white hover:text-white/70">
          Inicia sesion
        </a>
      </p>
    </div>
    <p class="border-t"></p>
    <form on:submit|preventDefault={handler} class="mt-8 space-y-6">
      <div class="rounded-md shadow-sm space-y-4">
        <label for="name" class="sr-only">Nombre de usuario</label>
        <Input type="text" id="name" placeholder="Nombre de usuario" autocomplete="username" bind:value={usernamep} />

        <label for="email" class="sr-only">Email</label>
        <Input type="email" id="email" placeholder="Email" autocomplete="email" bind:value={emailp} />

        <label for="password" class="sr-only">Contraseña</label>
        <Input type="password" id="password" placeholder="Contraseña" autocomplete="new-password" bind:value={passwordp} />

        <Button type="submit" class="w-full bg-white hover:bg-white/60 text-black">Registrarse</Button>
      </div>
    </form>
  </div>
</div>
