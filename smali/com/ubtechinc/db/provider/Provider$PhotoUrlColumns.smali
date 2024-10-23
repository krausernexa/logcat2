.class public final Lcom/ubtechinc/db/provider/Provider$PhotoUrlColumns;
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
    name = "PhotoUrlColumns"
.end annotation


# static fields
.field public static final AUTHORITY:Ljava/lang/String; = "com.ubtechinc.alpha2services.photo"

.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final DEFAULT_SORT_ORDER:Ljava/lang/String; = "filePath asc"

.field public static final FILEPATH:Ljava/lang/String; = "filePath"

.field public static final TABLE_NAME:Ljava/lang/String; = "photoUrl"

.field public static final URL:Ljava/lang/String; = "url"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 94
    const-string v0, "content://com.ubtechinc.alpha2services.photo/photoUrls"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/ubtechinc/db/provider/Provider$PhotoUrlColumns;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
