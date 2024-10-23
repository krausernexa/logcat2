.class public Lcom/ubtechinc/alpha2serverlib/util/AlphaMainServiceUtil;
.super Ljava/lang/Object;
.source "AlphaMainServiceUtil.java"


# static fields
.field private static version:Ljava/lang/String;


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    const-string v0, "2.0.0.1"

    sput-object v0, Lcom/ubtechinc/alpha2serverlib/util/AlphaMainServiceUtil;->version:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/ubtechinc/alpha2serverlib/util/AlphaMainServiceUtil;->mContext:Landroid/content/Context;

    .line 39
    return-void
.end method

.method public static getVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lcom/ubtechinc/alpha2serverlib/util/AlphaMainServiceUtil;->version:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public startService()V
    .locals 2

    .prologue
    .line 45
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.ubtechinc.services.MainService"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 46
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/ubtechinc/alpha2serverlib/util/AlphaMainServiceUtil;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 47
    return-void
.end method

.method public stopService()V
    .locals 2

    .prologue
    .line 53
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.ubtechinc.services.MainService"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 54
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/ubtechinc/alpha2serverlib/util/AlphaMainServiceUtil;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    .line 55
    return-void
.end method
