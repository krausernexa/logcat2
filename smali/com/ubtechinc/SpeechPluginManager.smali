.class public Lcom/ubtechinc/SpeechPluginManager;
.super Ljava/lang/Object;
.source "SpeechPluginManager.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getPlugin(Landroid/content/Context;)Lcom/ubtechinc/db/pojos/Alpha2SpeechPlugin;
    .locals 2
    .param p0, "mContext"    # Landroid/content/Context;

    .prologue
    .line 14
    invoke-static {p0}, Lcom/ubtechinc/db/SpeechPluginDao;->query(Landroid/content/Context;)Lcom/ubtechinc/db/pojos/Alpha2SpeechPlugin;

    move-result-object v0

    .line 15
    .local v0, "plugin":Lcom/ubtechinc/db/pojos/Alpha2SpeechPlugin;
    if-nez v0, :cond_0

    .line 16
    new-instance v0, Lcom/ubtechinc/db/pojos/Alpha2SpeechPlugin;

    .end local v0    # "plugin":Lcom/ubtechinc/db/pojos/Alpha2SpeechPlugin;
    invoke-direct {v0}, Lcom/ubtechinc/db/pojos/Alpha2SpeechPlugin;-><init>()V

    .line 17
    .restart local v0    # "plugin":Lcom/ubtechinc/db/pojos/Alpha2SpeechPlugin;
    const-string v1, "Iflytek"

    iput-object v1, v0, Lcom/ubtechinc/db/pojos/Alpha2SpeechPlugin;->name:Ljava/lang/String;

    .line 18
    const-string v1, "com.ubtechinc.services.IflytekSpeeckServices"

    iput-object v1, v0, Lcom/ubtechinc/db/pojos/Alpha2SpeechPlugin;->action:Ljava/lang/String;

    .line 20
    :cond_0
    return-object v0
.end method

.method public static getSpecifyPlugin(Landroid/content/Context;Lcom/ubtechinc/contant/CustomLanguage;)Lcom/ubtechinc/db/pojos/Alpha2SpeechPlugin;
    .locals 2
    .param p0, "mContext"    # Landroid/content/Context;
    .param p1, "specifyLanguage"    # Lcom/ubtechinc/contant/CustomLanguage;

    .prologue
    .line 25
    invoke-static {p0}, Lcom/ubtechinc/db/SpeechPluginDao;->query(Landroid/content/Context;)Lcom/ubtechinc/db/pojos/Alpha2SpeechPlugin;

    move-result-object v0

    .line 26
    .local v0, "plugin":Lcom/ubtechinc/db/pojos/Alpha2SpeechPlugin;
    if-nez v0, :cond_0

    .line 27
    new-instance v0, Lcom/ubtechinc/db/pojos/Alpha2SpeechPlugin;

    .end local v0    # "plugin":Lcom/ubtechinc/db/pojos/Alpha2SpeechPlugin;
    invoke-direct {v0}, Lcom/ubtechinc/db/pojos/Alpha2SpeechPlugin;-><init>()V

    .line 29
    .restart local v0    # "plugin":Lcom/ubtechinc/db/pojos/Alpha2SpeechPlugin;
    const-string v1, "Speech"

    iput-object v1, v0, Lcom/ubtechinc/db/pojos/Alpha2SpeechPlugin;->name:Ljava/lang/String;

    .line 30
    const-string v1, "com.ubtechinc.services.SpeechServices"

    iput-object v1, v0, Lcom/ubtechinc/db/pojos/Alpha2SpeechPlugin;->action:Ljava/lang/String;

    .line 32
    :cond_0
    return-object v0
.end method
