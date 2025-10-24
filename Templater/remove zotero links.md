<%*  
const file = app.workspace.getActiveFile();  
if (!file) {  
tR += "⚠️ Aucun fichier ouvert.";  
} else {  
try {  
const content = await app.vault.read(file);  
const newContent = content.replace(/GotoannotationGo to annotationGotoannotationzotero:\/\/open-pdf\/[^]+)/g, '');  
if (newContent === content) {  
tR += "ℹ️ Aucun lien `Go to annotation` trouvé.";  
} else {  
await app.vault.modify(file, newContent);  
new Notice("✅ Liens Zotero supprimés !");  
tR += "✅ Liens Zotero supprimés.";  
}  
} catch (e) {  
tR += "❌ Erreur interne : " + (e && e.message ? e.message : String(e));  
}  
}  
%>