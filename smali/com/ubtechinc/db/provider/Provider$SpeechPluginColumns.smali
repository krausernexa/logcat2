.class public final Lcom/ubtechinc/db/provider/Provider$SpeechPluginColumns;
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
    name = "SpeechPluginColumns"
.end annotation


# static fields
.field public static final AUTHORITY:Ljava/lang/String; = "com.ubtechinc.alpha2services.alpha2speech"

.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final TABLE_NAME:Ljava/lang/String; = "speech"

.field public static final action:Ljava/lang/String; = "action"

.field public static final name:Ljava/lang/String; = "name"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 74
    const-string v0, "content://com.ubtechinc.alpha2services.alpha2speech/speechs"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/ubtechinc/db/provider/Provider$SpeechPluginColumns;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
