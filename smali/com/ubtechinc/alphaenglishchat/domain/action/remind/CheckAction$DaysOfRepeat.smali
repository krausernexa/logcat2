.class Lcom/ubtechinc/alphaenglishchat/domain/action/remind/CheckAction$DaysOfRepeat;
.super Ljava/lang/Object;
.source "CheckAction.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ubtechinc/alphaenglishchat/domain/action/remind/CheckAction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DaysOfRepeat"
.end annotation


# instance fields
.field private repeat:I

.field final synthetic this$0:Lcom/ubtechinc/alphaenglishchat/domain/action/remind/CheckAction;


# direct methods
.method private constructor <init>(Lcom/ubtechinc/alphaenglishchat/domain/action/remind/CheckAction;)V
    .locals 0

    .prologue
    .line 210
    iput-object p1, p0, Lcom/ubtechinc/alphaenglishchat/domain/action/remind/CheckAction$DaysOfRepeat;->this$0:Lcom/ubtechinc/alphaenglishchat/domain/action/remind/CheckAction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/ubtechinc/alphaenglishchat/domain/action/remind/CheckAction;Lcom/ubtechinc/alphaenglishchat/domain/action/remind/CheckAction$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/ubtechinc/alphaenglishchat/domain/action/remind/CheckAction;
    .param p2, "x1"    # Lcom/ubtechinc/alphaenglishchat/domain/action/remind/CheckAction$1;

    .prologue
    .line 210
    invoke-direct {p0, p1}, Lcom/ubtechinc/alphaenglishchat/domain/action/remind/CheckAction$DaysOfRepeat;-><init>(Lcom/ubtechinc/alphaenglishchat/domain/action/remind/CheckAction;)V

    return-void
.end method


# virtual methods
.method public getRepeat()I
    .locals 1

    .prologue
    .line 214
    iget v0, p0, Lcom/ubtechinc/alphaenglishchat/domain/action/remind/CheckAction$DaysOfRepeat;->repeat:I

    return v0
.end method

.method public setRepeat(I)V
    .locals 2
    .param p1, "repeat"    # I

    .prologue
    .line 218
    iget v0, p0, Lcom/ubtechinc/alphaenglishchat/domain/action/remind/CheckAction$DaysOfRepeat;->repeat:I

    const/4 v1, 0x1

    shl-int/2addr v1, p1

    or-int/2addr v0, v1

    iput v0, p0, Lcom/ubtechinc/alphaenglishchat/domain/action/remind/CheckAction$DaysOfRepeat;->repeat:I

    .line 219
    return-void
.end method
