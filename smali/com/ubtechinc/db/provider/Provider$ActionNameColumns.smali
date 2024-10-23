.class public final Lcom/ubtechinc/db/provider/Provider$ActionNameColumns;
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
    name = "ActionNameColumns"
.end annotation


# static fields
.field public static final ACTION_CN_NAME:Ljava/lang/String; = "action_cn_name"

.field public static final ACTION_EN_NAME:Ljava/lang/String; = "action_en_name"

.field public static final ACTION_ID:Ljava/lang/String; = "action_id"

.field public static final ACTION_TYPE:Ljava/lang/String; = "action_type"

.field public static final AUTHORITY:Ljava/lang/String; = "com.ubtechinc.alpha2services.action_name"

.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final DEFAULT_SORT_ORDER:Ljava/lang/String; = "action_id asc"

.field public static final TABLE_NAME:Ljava/lang/String; = "actionName"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 114
    const-string v0, "content://com.ubtechinc.alpha2services.action_name/actionNames"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/ubtechinc/db/provider/Provider$ActionNameColumns;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
