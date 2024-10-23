.class public Lcom/ubtechinc/StateManager;
.super Ljava/lang/Object;
.source "StateManager.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isDebug(Landroid/content/Context;)Z
    .locals 4
    .param p0, "mContext"    # Landroid/content/Context;

    .prologue
    .line 26
    const/4 v0, 0x0

    .line 27
    .local v0, "ret":Z
    invoke-static {p0}, Lcom/ubtechinc/db/StateDao;->query(Landroid/content/Context;)Lcom/ubtechinc/db/pojos/Alpha2State;

    move-result-object v1

    .line 28
    .local v1, "state":Lcom/ubtechinc/db/pojos/Alpha2State;
    if-nez v1, :cond_1

    .line 29
    const/4 v0, 0x0

    .line 38
    :cond_0
    :goto_0
    return v0

    .line 31
    :cond_1
    iget v2, v1, Lcom/ubtechinc/db/pojos/Alpha2State;->debug:I

    if-nez v2, :cond_2

    .line 32
    const/4 v0, 0x0

    goto :goto_0

    .line 34
    :cond_2
    iget v2, v1, Lcom/ubtechinc/db/pojos/Alpha2State;->debug:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 35
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static isPower(Landroid/content/Context;)Z
    .locals 4
    .param p0, "mContext"    # Landroid/content/Context;

    .prologue
    .line 10
    const/4 v0, 0x0

    .line 11
    .local v0, "ret":Z
    invoke-static {p0}, Lcom/ubtechinc/db/StateDao;->query(Landroid/content/Context;)Lcom/ubtechinc/db/pojos/Alpha2State;

    move-result-object v1

    .line 12
    .local v1, "state":Lcom/ubtechinc/db/pojos/Alpha2State;
    if-nez v1, :cond_1

    .line 13
    const/4 v0, 0x1

    .line 22
    :cond_0
    :goto_0
    return v0

    .line 15
    :cond_1
    iget v2, v1, Lcom/ubtechinc/db/pojos/Alpha2State;->power:I

    if-nez v2, :cond_2

    .line 16
    const/4 v0, 0x0

    goto :goto_0

    .line 18
    :cond_2
    iget v2, v1, Lcom/ubtechinc/db/pojos/Alpha2State;->power:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 19
    const/4 v0, 0x1

    goto :goto_0
.end method
