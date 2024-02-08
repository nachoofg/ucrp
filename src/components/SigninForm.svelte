<script>
  import { Button } from "./base/button";
  import GoogleSignInButton from "./social/GoogleSignInButton.svelte";
  import { Input } from "./base/input";
  import LoadingButton from "./LoadingButton.svelte";
  let email, password, errorMessage, loading;
</script>

<div
  class="min-h-screen flex items-center justify-center py-12 px-4 sm:px-6 lg:px-8"
>
  <div class="max-w-md w-full space-y-8 p-6 rounded-xl shadow-lg bg-blue-950">
    <div>
      <h1 class="mt-6 text-center text-3xl font-extrabold text-white">
        Iniciar sesion
      </h1>
      <p class="mt-2 text-center text-sm text-white/80">
        Nuevo?
        <a href="/register" class="font-medium text-white hover:text-white/70 ">
          Crear una cuenta
        </a>
      </p>
    </div>
    <p class="border-t"></p>
    <form class="mt-8 space-y-6 " on:submit|preventDefault={handleLogin}>
      <div class="rounded-md space-y-4">
        <div>
          <label for="email" class="sr-only">Email</label>
          <Input
            bind:value={email}
            type="email"
            id="email"
            placeholder="Email"
            autocomplete="email"
          />
        </div>
        <div>
          <label for="password" class="sr-only">Password</label>
          <Input
            bind:value={password}
            type="password"
            id="password"
            placeholder="Contraseña"
            autocomplete="current-password"
          />
          <div class="text-right mt-2">
            <a
              href="/forgot-password"
              class="font-medium text-sm text-white hover:text-white/70"
            >
              Olvidaste tu contraseña?
            </a>
          </div>
        </div>
      </div>
      {#if errorMessage}
        <!-- Container for error message with margin for spacing -->
        <div class="mt-4 mb-3 text-center">
          <p class="text-red-500 text-sm">{errorMessage}</p>
        </div>
      {/if}

      <div>
        {#if loading}
          <LoadingButton class="w-full" />
        {:else}
          <Button class="w-full bg-white hover:bg-white/60" type="submit"><p class="text-black">Iniciar sesion</p></Button>
        {/if}
      </div>
    </form>
  </div>
</div>
