.class Lai/api/ui/AIButton$5;
.super Ljava/lang/Object;
.source "AIButton.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lai/api/ui/AIButton;->onListeningFinished()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lai/api/ui/AIButton;


# direct methods
.method constructor <init>(Lai/api/ui/AIButton;)V
    .locals 0
    .param p1, "this$0"    # Lai/api/ui/AIButton;

    .prologue
    .line 132
    iput-object p1, p0, Lai/api/ui/AIButton$5;->this$0:Lai/api/ui/AIButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 135
    iget-object v0, p0, Lai/api/ui/AIButton$5;->this$0:Lai/api/ui/AIButton;

    sget-object v1, Lai/api/ui/AIButton$MicState;->busy:Lai/api/ui/AIButton$MicState;

    invoke-virtual {v0, v1}, Lai/api/ui/AIButton;->changeState(Lai/api/ui/AIButton$MicState;)V

    .line 136
    return-void
.end method
