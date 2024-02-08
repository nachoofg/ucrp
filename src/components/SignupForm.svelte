<script>
  import { Button } from "./base/button";
  import GoogleSignInButton from "./social/GoogleSignInButton.svelte";
  import { Input } from "./base/input";
  let name, email, password, errorMessage;
  async function createAccount() {
    try {
      const redirectedUrl = await handleSignup(name, email, password);
      if (redirectedUrl) {
        window.location.assign(redirectedUrl);
      }
    } catch (error) {
      console.error("Error during sign in:", error);
      errorMessage = getFriendlyErrorMessage(error);
    }
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
          Registrarse
        </a>
      </p>
    </div>
    <p class="border-t"></p>
    <form class="mt-8 space-y-6" on:submit|preventDefault={createAccount}>
      <div class="rounded-md shadow-sm space-y-4">
        <div>
          <label for="name" class="sr-only">Nombre</label>
          <Input
            bind:value={name}
            type="text"
            id="name"
            placeholder="Nombre"
            autocomplete="name"
          />
        </div>
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
          <label for="password" class="sr-only">Contraseña</label>
          <Input
            bind:value={password}
            type="password"
            id="password"
            placeholder="Contraseña"
            autocomplete="password"
          />
        </div>
      </div>
      {#if errorMessage}
        <!-- Container for error message with margin for spacing -->
        <div class="mt-4 mb-3 text-center">
          <p class="text-red-500 text-sm">{errorMessage}</p>
        </div>
      {/if}
      <div>
        <Button class="w-full bg-white hover:bg-white/60" type="submit"><p class="text-black">Registrarse</p></Button>
      </div>
    </form>
  </div>
</div>
