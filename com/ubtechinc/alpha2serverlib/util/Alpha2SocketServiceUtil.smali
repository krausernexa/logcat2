.class public Lcom/ubtechinc/alpha2serverlib/util/Alpha2SocketServiceUtil;
.super Ljava/lang/Object;
.source "Alpha2SocketServiceUtil.java"


# instance fields
.field mContext:Landroid/content/Context;

.field mServiceIntent:Landroid/content/Intent;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/ubtechinc/alpha2serverlib/util/Alpha2SocketServiceUtil;->mContext:Landroid/content/Context;

    .line 23
    return-void
.end method


# virtual methods
.method public startService()V
    .locals 2

    .prologue
    .line 29
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.ubtechinc.services.Alpha2SocketServices"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/ubtechinc/alpha2serverlib/util/Alpha2SocketServiceUtil;->mServiceIntent:Landroid/content/Intent;

    .line 30
    iget-object v0, p0, Lcom/ubtechinc/alpha2serverlib/util/Alpha2SocketServiceUtil;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/ubtechinc/alpha2serverlib/util/Alpha2SocketServiceUtil;->mServiceIntent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 31
    return-void
.end method

.method public stopService()V
    .locals 2

    .prologue
    .line 37
    iget-object v0, p0, Lcom/ubtechinc/alpha2serverlib/util/Alpha2SocketServiceUtil;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/ubtechinc/alpha2serverlib/util/Alpha2SocketServiceUtil;->mServiceIntent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    .line 38
    return-void
.end method
