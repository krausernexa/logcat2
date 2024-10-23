.class public Lcom/ubtechinc/alpha2serverlib/authority/Alpha2Authority;
.super Ljava/lang/Object;
.source "Alpha2Authority.java"


# static fields
.field public static mAppid:Ljava/lang/String;

.field public static mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createAuthority(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "appid"    # Ljava/lang/String;

    .prologue
    .line 28
    sput-object p0, Lcom/ubtechinc/alpha2serverlib/authority/Alpha2Authority;->mContext:Landroid/content/Context;

    .line 29
    sput-object p1, Lcom/ubtechinc/alpha2serverlib/authority/Alpha2Authority;->mAppid:Ljava/lang/String;

    .line 30
    return-void
.end method
