<script>
  // import { createUser } from "../services/sqlite/user";
  let username = "";
  let email = "";
  let password = "";

  function handler() {
    console.log("svelte", username, email, password);
    // createUser(username, email, password);
  }
</script>

<div
  class="min-h-screen flex items-center justify-center py-12 px-4 sm:px-6 lg:px-8"
>
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
        <input
          class="appearance-none rounded-md block w-full px-3 py-2 border border-black/20 placeholder-black/80 text-black focus:outline-none focus:z-10 sm:text-sm"
          type="text"
          id="name"
          placeholder="Nombre de usuario"
          autocomplete="username"
          bind:value={username}
        />

        <label for="email" class="sr-only">Email</label>
        <input
          class="appearance-none rounded-md block w-full px-3 py-2 border border-black/20 placeholder-black/80 text-black focus:outline-none focus:z-10 sm:text-sm"
          type="email"
          id="email"
          placeholder="Email"
          autocomplete="email"
          bind:value={email}
        />

        <label for="password" class="sr-only">Contraseña</label>
        <input
          class="appearance-none rounded-md block w-full px-3 py-2 border border-black/20 placeholder-black/80 text-black focus:outline-none focus:z-10 sm:text-sm"
          type="password"
          id="password"
          placeholder="Contraseña"
          autocomplete="new-password"
          bind:value={password}
        />

        <button
          type="submit"
          class="w-full bg-white hover:bg-white/60 text-black rounded-full border border-black bg-black p-1.5 px-4 text-sm text-white hover:bg-black/80 transition duration-200 ease-in-out"
          ><p class="text-black">Registrarse</p></button
        >
      </div>
    </form>
  </div>
</div>
