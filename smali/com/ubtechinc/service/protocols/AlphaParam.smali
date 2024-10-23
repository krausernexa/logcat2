.class public Lcom/ubtechinc/service/protocols/AlphaParam;
.super Ljava/lang/Object;
.source "AlphaParam.java"


# annotations
.annotation runtime Lorg/msgpack/annotation/Message;
.end annotation


# static fields
.field public static final GET_APP_LANGUAGE:I = 0x3

.field public static final GET_INIT_PARAM:I = 0x1

.field public static final SET_APP_LANGUAGE:I = 0x4

.field public static final SET_MASTER_NAME:I = 0x2

.field public static final bIsFromClient:Ljava/lang/String; = "bIsFromClient"

.field public static final iParamcmd:Ljava/lang/String; = "iParamcmd"

.field public static final lSdSurplusVolume:Ljava/lang/String; = "lSdSurplusVolume"

.field public static final lSdTotalVolume:Ljava/lang/String; = "lSdTotalVolume"

.field public static final sAndroidVersion:Ljava/lang/String; = "sAndroidVersion"

.field public static final sChestVersion:Ljava/lang/String; = "sChestVersion"

.field public static final sHeaderVersion:Ljava/lang/String; = "sHeaderVersion"

.field public static final sMasterName:Ljava/lang/String; = "sMasterName"

.field public static final sServiceLanguage:Ljava/lang/String; = "sServiceLanguage"

.field public static final sServiceVersion:Ljava/lang/String; = "sServiceVersion"


# instance fields
.field param:Ljava/lang/String;
    .annotation runtime Lorg/msgpack/annotation/Index;
        value = 0x0
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getParam()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/ubtechinc/service/protocols/AlphaParam;->param:Ljava/lang/String;

    return-object v0
.end method

.method public setParam(Ljava/lang/String;)V
    .locals 0
    .param p1, "param"    # Ljava/lang/String;

    .prologue
    .line 46
    iput-object p1, p0, Lcom/ubtechinc/service/protocols/AlphaParam;->param:Ljava/lang/String;

    .line 47
    return-void
.end method
