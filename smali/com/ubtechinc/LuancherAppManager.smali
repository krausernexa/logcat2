.class public Lcom/ubtechinc/LuancherAppManager;
.super Ljava/lang/Object;
.source "LuancherAppManager.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isDebug(Landroid/content/Context;)Z
    .locals 2
    .param p0, "mContext"    # Landroid/content/Context;

    .prologue
    .line 14
    invoke-static {p0}, Lcom/ubtechinc/db/AppDao;->getTopApp(Landroid/content/Context;)Lcom/ubtechinc/db/pojos/Alpha2App;

    move-result-object v0

    .line 15
    .local v0, "app":Lcom/ubtechinc/db/pojos/Alpha2App;
    if-nez v0, :cond_0

    .line 16
    const/4 v1, 0x1

    .line 18
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isLuancherAPP(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1
    .param p0, "mContext"    # Landroid/content/Context;
    .param p1, "mAppID"    # Ljava/lang/String;

    .prologue
    .line 10
    invoke-static {p0, p1}, Lcom/ubtechinc/db/AppDao;->query(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
