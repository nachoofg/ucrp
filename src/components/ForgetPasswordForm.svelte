<script>
  import { Button } from "./base/button";
  import { Input } from "./base/input";
  import Mail from "./icons/Mail.svelte";
  import LoadingButton from "./LoadingButton.svelte";
  let email, errorMessage, loading, successMessage;

  async function handlePasswordReset() {
    loading = true;
    try {
      await sendPasswordResetEmail(auth, email);
      successMessage = "Please check your email to reset your password.";
    } catch (error) {
      console.error("Error during password reset:", error);
      errorMessage = getFriendlyErrorMessage(error);
    }
    loading = false;
  }
</script>

<div
  class="min-h-screen flex items-center justify-center py-12 px-4 sm:px-6 lg:px-8"
>
  <div class="max-w-md w-full space-y-8 p-6 rounded-xl shadow-lg bg-blue-950">
    <div>
      <h1 class="mt-6 text-center text-3xl font-extrabold text-white">
        Reset Password
      </h1>
      <p class="mt-2 text-center text-sm text-white/80">
        Enter the email associated with your account.
      </p>
    </div>
    <form class="mt-8 space-y-6" on:submit|preventDefault={handlePasswordReset}>
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
      </div>
      {#if errorMessage}
        <div class="mt-4 mb-3 text-center">
          <p class="text-red-500 text-sm">{errorMessage}</p>
        </div>
      {/if}
      {#if successMessage}
        <div class="mt-4 mb-3 text-center">
          <p class="text-green-500 text-sm">{successMessage}</p>
        </div>
      {/if}
      <div>
        {#if loading}
          <LoadingButton class="w-full" />
        {:else}
          <Button class="w-full bg-white hover:bg-white/60" type="submit">
            <Mail />
            <p class="text-black">Send Reset Email</p></Button
          >
        {/if}
      </div>
    </form>
  </div>
</div>
