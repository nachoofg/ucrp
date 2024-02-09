<script>
  import { Button } from "./base/button";
  import { createUser } from "../services/sqlite/user";
  import { Input } from "./base/input";
  let username, email, password, errorMessage;
  console.error("svelte", username, email, password);
  createUser(username, email, password);
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
          Registrarse
        </a>
      </p>
    </div>
    <p class="border-t"></p>
    <form class="mt-8 space-y-6" on:submit|preventDefault={createUser}>
      <div class="rounded-md shadow-sm space-y-4">
        <div>
          <label for="name" class="sr-only">Nombre de usuario</label>
          <Input
            bind:username={username}
            type="text"
            id="name"
            placeholder="Nombre de usuario"
            autocomplete="username"
          />
        </div>
        <div>
          <label for="email" class="sr-only">Email</label>
          <Input
            bind:email={email}
            type="email"
            id="email"
            placeholder="Email"
            autocomplete="email"
          />
        </div>
        <div>
          <label for="password" class="sr-only">Contraseña</label>
          <Input
            bind:password={password}
            type="password"
            id="password"
            placeholder="Contraseña"
            autocomplete="password"
          />
        </div>
      </div>
      {#if errorMessage}
        <div class="mt-4 mb-3 text-center">
          <p class="text-red-500 text-sm">{errorMessage}</p>
        </div>
      {/if}
      <div>
        <Button class="w-full bg-white hover:bg-white/60" type="submit"
          ><p class="text-black">Registrarse</p></Button
        >
      </div>
    </form>
  </div>
</div>
