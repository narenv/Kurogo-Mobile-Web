{include file="findInclude:common/header.tpl"}

<div class="nonfocal">
<h2>Login</h2>
</div>

{if $message}
<p class="focal error">{$message}</p>
{/if}

<form method="POST" id="loginForm" action="login.php">
<input type="hidden" name="url" value="{$url|escape}">
<p class="focal"><label for="loginUser">login:</label> <input type="text" name="loginUser" class="loginFormInput"></p>
<p class="focal"><label for="loginUser">password:</label> <input type="password" name="loginPassword" class="loginFormInput"></p>
{if $authenticationAuthorities|@count > 1}
<p class="focal">
<select name="authority">
{foreach $authenticationAuthorities as $authorityName=>$authorityData}
<option value="{$authorityName}"{if $authority==$authorityName} selected{/if}>{$authorityData.TITLE|escape}</option>
{/foreach}
</select>
</p>
{/if}
{if $authenticationAuthorityLinks}
<p class="focal">
{foreach $authenticationAuthorityLinks as $authorityName=>$authorityData}
<a href="{$authorityData.LINK}">{$authorityData.TITLE|escape}</a>
{/foreach}
</p>
{/if}
<p class="focal"><input type="submit" name="login_submit" id="login_submit" value="Login"></p>

</form>
{include file="findInclude:common/footer.tpl"}
