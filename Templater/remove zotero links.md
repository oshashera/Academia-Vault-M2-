<%*
const file = app.workspace.getActiveFile();
if (!file) {
  new Notice("⚠️ Aucun fichier ouvert !");
  return;
}

try {
  const content = await app.vault.read(file);
  const newContent = content.replace(/\[Go to annotation\]\(zotero:\/\/open-pdf\/[^\)]+\)/g, '');
  if (newContent === content) {
    new Notice("ℹ️ Aucun lien Zotero trouvé.");
  } else {
    await app.vault.modify(file, newContent);
    new Notice("✅ Liens Zotero supprimés !");
  }
} catch (err) {
  new Notice("❌ Erreur : " + (err?.message ?? err));
}
%>
