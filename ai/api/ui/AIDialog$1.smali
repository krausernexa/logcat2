.class Lai/api/ui/AIDialog$1;
.super Ljava/lang/Object;
.source "AIDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lai/api/ui/AIDialog;->showAndListen()V
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
    .line 93
    iput-object p1, p0, Lai/api/ui/AIDialog$1;->this$0:Lai/api/ui/AIDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lai/api/ui/AIDialog$1;->this$0:Lai/api/ui/AIDialog;

    invoke-static {v0}, Lai/api/ui/AIDialog;->access$000(Lai/api/ui/AIDialog;)V

    .line 97
    iget-object v0, p0, Lai/api/ui/AIDialog$1;->this$0:Lai/api/ui/AIDialog;

    invoke-static {v0}, Lai/api/ui/AIDialog;->access$100(Lai/api/ui/AIDialog;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 98
    iget-object v0, p0, Lai/api/ui/AIDialog$1;->this$0:Lai/api/ui/AIDialog;

    invoke-static {v0}, Lai/api/ui/AIDialog;->access$200(Lai/api/ui/AIDialog;)V

    .line 99
    return-void
.end method
