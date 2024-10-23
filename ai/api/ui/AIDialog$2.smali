.class Lai/api/ui/AIDialog$2;
.super Ljava/lang/Object;
.source "AIDialog.java"

# interfaces
.implements Lai/api/ui/AIButton$AIButtonListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lai/api/ui/AIDialog;->setAIButtonCallback(Lai/api/ui/AIButton;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lai/api/ui/AIDialog;


# direct methods
.method constructor <init>(Lai/api/ui/AIDialog;)V
    .locals 0
    .param p1, "this$0"    # Lai/api/ui/AIDialog;

    .prologue
    .line 118
    iput-object p1, p0, Lai/api/ui/AIDialog$2;->this$0:Lai/api/ui/AIDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancelled()V
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lai/api/ui/AIDialog$2;->this$0:Lai/api/ui/AIDialog;

    invoke-virtual {v0}, Lai/api/ui/AIDialog;->close()V

    .line 141
    iget-object v0, p0, Lai/api/ui/AIDialog$2;->this$0:Lai/api/ui/AIDialog;

    invoke-static {v0}, Lai/api/ui/AIDialog;->access$300(Lai/api/ui/AIDialog;)Lai/api/ui/AIDialog$AIDialogListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 142
    iget-object v0, p0, Lai/api/ui/AIDialog$2;->this$0:Lai/api/ui/AIDialog;

    invoke-static {v0}, Lai/api/ui/AIDialog;->access$300(Lai/api/ui/AIDialog;)Lai/api/ui/AIDialog$AIDialogListener;

    move-result-object v0

    invoke-interface {v0}, Lai/api/ui/AIDialog$AIDialogListener;->onCancelled()V

    .line 144
    :cond_0
    return-void
.end method

.method public onError(Lai/api/model/AIError;)V
    .locals 1
    .param p1, "error"    # Lai/api/model/AIError;

    .prologue
    .line 131
    iget-object v0, p0, Lai/api/ui/AIDialog$2;->this$0:Lai/api/ui/AIDialog;

    invoke-static {v0}, Lai/api/ui/AIDialog;->access$300(Lai/api/ui/AIDialog;)Lai/api/ui/AIDialog$AIDialogListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 132
    iget-object v0, p0, Lai/api/ui/AIDialog$2;->this$0:Lai/api/ui/AIDialog;

    invoke-static {v0}, Lai/api/ui/AIDialog;->access$300(Lai/api/ui/AIDialog;)Lai/api/ui/AIDialog$AIDialogListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lai/api/ui/AIDialog$AIDialogListener;->onError(Lai/api/model/AIError;)V

    .line 134
    :cond_0
    return-void
.end method

.method public onResult(Lai/api/model/AIResponse;)V
    .locals 1
    .param p1, "result"    # Lai/api/model/AIResponse;

    .prologue
    .line 122
    iget-object v0, p0, Lai/api/ui/AIDialog$2;->this$0:Lai/api/ui/AIDialog;

    invoke-virtual {v0}, Lai/api/ui/AIDialog;->close()V

    .line 124
    iget-object v0, p0, Lai/api/ui/AIDialog$2;->this$0:Lai/api/ui/AIDialog;

    invoke-static {v0}, Lai/api/ui/AIDialog;->access$300(Lai/api/ui/AIDialog;)Lai/api/ui/AIDialog$AIDialogListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 125
    iget-object v0, p0, Lai/api/ui/AIDialog$2;->this$0:Lai/api/ui/AIDialog;

    invoke-static {v0}, Lai/api/ui/AIDialog;->access$300(Lai/api/ui/AIDialog;)Lai/api/ui/AIDialog$AIDialogListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lai/api/ui/AIDialog$AIDialogListener;->onResult(Lai/api/model/AIResponse;)V

    .line 127
    :cond_0
    return-void
.end method
