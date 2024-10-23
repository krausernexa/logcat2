.class public final Lcom/ubtechinc/db/provider/Provider$Alpha2AppColumns;
.super Ljava/lang/Object;
.source "Provider.java"

# interfaces
.implements Landroid/provider/BaseColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ubtechinc/db/provider/Provider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Alpha2AppColumns"
.end annotation


# static fields
.field public static final APPID:Ljava/lang/String; = "appid"

.field public static final AUTHORITY:Ljava/lang/String; = "com.ubtechinc.alpha2services.alpha2app"

.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final DEFAULT_SORT_ORDER:Ljava/lang/String; = "appid desc"

.field public static final NAME:Ljava/lang/String; = "name"

.field public static final TABLE_NAME:Ljava/lang/String; = "app"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    const-string v0, "content://com.ubtechinc.alpha2services.alpha2app/apps"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/ubtechinc/db/provider/Provider$Alpha2AppColumns;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
