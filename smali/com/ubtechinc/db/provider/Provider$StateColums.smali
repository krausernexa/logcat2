.class public final Lcom/ubtechinc/db/provider/Provider$StateColums;
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
    name = "StateColums"
.end annotation


# static fields
.field public static final AUTHORITY:Ljava/lang/String; = "com.ubtechinc.alpha2services.alpha2state"

.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final DEBUG:Ljava/lang/String; = "debug"

.field public static final POWER:Ljava/lang/String; = "power"

.field public static final TABLE_NAME:Ljava/lang/String; = "state"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 52
    const-string v0, "content://com.ubtechinc.alpha2services.alpha2state/states"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/ubtechinc/db/provider/Provider$StateColums;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
