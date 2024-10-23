.class public Lai/api/ui/AIDialog;
.super Ljava/lang/Object;
.source "AIDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lai/api/ui/AIDialog$AIDialogListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final aiButton:Lai/api/ui/AIButton;

.field private final config:Lai/api/AIConfiguration;

.field private final context:Landroid/content/Context;

.field private final dialog:Landroid/app/Dialog;

.field private final handler:Landroid/os/Handler;

.field private final partialResultsTextView:Landroid/widget/TextView;

.field private resultsListener:Lai/api/ui/AIDialog$AIDialogListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 45
    const-class v0, Lai/api/ui/AIDialog;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lai/api/ui/AIDialog;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lai/api/AIConfiguration;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "config"    # Lai/api/AIConfiguration;

    .prologue
    .line 64
    sget v0, Lai/api/R$layout;->aidialog:I

    invoke-direct {p0, p1, p2, v0}, Lai/api/ui/AIDialog;-><init>(Landroid/content/Context;Lai/api/AIConfiguration;I)V

    .line 65
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lai/api/AIConfiguration;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "config"    # Lai/api/AIConfiguration;
    .param p3, "customLayout"    # I

    .prologue
    const/4 v2, 0x1

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    iput-object p1, p0, Lai/api/ui/AIDialog;->context:Landroid/content/Context;

    .line 69
    iput-object p2, p0, Lai/api/ui/AIDialog;->config:Lai/api/AIConfiguration;

    .line 70
    new-instance v0, Landroid/app/Dialog;

    invoke-direct {v0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lai/api/ui/AIDialog;->dialog:Landroid/app/Dialog;

    .line 71
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lai/api/ui/AIDialog;->handler:Landroid/os/Handler;

    .line 73
    iget-object v0, p0, Lai/api/ui/AIDialog;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0, v2}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 74
    iget-object v0, p0, Lai/api/ui/AIDialog;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0, v2}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 75
    iget-object v0, p0, Lai/api/ui/AIDialog;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0, p3}, Landroid/app/Dialog;->setContentView(I)V

    .line 77
    iget-object v0, p0, Lai/api/ui/AIDialog;->dialog:Landroid/app/Dialog;

    sget v1, Lai/api/R$id;->partialResultsTextView:I

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lai/api/ui/AIDialog;->partialResultsTextView:Landroid/widget/TextView;

    .line 79
    iget-object v0, p0, Lai/api/ui/AIDialog;->dialog:Landroid/app/Dialog;

    sget v1, Lai/api/R$id;->micButton:I

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lai/api/ui/AIButton;

    iput-object v0, p0, Lai/api/ui/AIDialog;->aiButton:Lai/api/ui/AIButton;

    .line 80
    iget-object v0, p0, Lai/api/ui/AIDialog;->aiButton:Lai/api/ui/AIButton;

    invoke-virtual {v0, p2}, Lai/api/ui/AIButton;->initialize(Lai/api/AIConfiguration;)V

    .line 81
    iget-object v0, p0, Lai/api/ui/AIDialog;->aiButton:Lai/api/ui/AIButton;

    invoke-direct {p0, v0}, Lai/api/ui/AIDialog;->setAIButtonCallback(Lai/api/ui/AIButton;)V

    .line 82
    return-void
.end method

.method static synthetic access$000(Lai/api/ui/AIDialog;)V
    .locals 0
    .param p0, "x0"    # Lai/api/ui/AIDialog;

    .prologue
    .line 43
    invoke-direct {p0}, Lai/api/ui/AIDialog;->resetControls()V

    return-void
.end method

.method static synthetic access$100(Lai/api/ui/AIDialog;)Landroid/app/Dialog;
    .locals 1
    .param p0, "x0"    # Lai/api/ui/AIDialog;

    .prologue
    .line 43
    iget-object v0, p0, Lai/api/ui/AIDialog;->dialog:Landroid/app/Dialog;

    return-object v0
.end method

.method static synthetic access$200(Lai/api/ui/AIDialog;)V
    .locals 0
    .param p0, "x0"    # Lai/api/ui/AIDialog;

    .prologue
    .line 43
    invoke-direct {p0}, Lai/api/ui/AIDialog;->startListening()V

    return-void
.end method

.method static synthetic access$300(Lai/api/ui/AIDialog;)Lai/api/ui/AIDialog$AIDialogListener;
    .locals 1
    .param p0, "x0"    # Lai/api/ui/AIDialog;

    .prologue
    .line 43
    iget-object v0, p0, Lai/api/ui/AIDialog;->resultsListener:Lai/api/ui/AIDialog$AIDialogListener;

    return-object v0
.end method

.method static synthetic access$400(Lai/api/ui/AIDialog;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lai/api/ui/AIDialog;

    .prologue
    .line 43
    iget-object v0, p0, Lai/api/ui/AIDialog;->partialResultsTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$500(Lai/api/ui/AIDialog;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lai/api/ui/AIDialog;

    .prologue
    .line 43
    iget-object v0, p0, Lai/api/ui/AIDialog;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method private resetControls()V
    .locals 2

    .prologue
    .line 112
    iget-object v0, p0, Lai/api/ui/AIDialog;->partialResultsTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 113
    iget-object v0, p0, Lai/api/ui/AIDialog;->partialResultsTextView:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 115
    :cond_0
    return-void
.end method

.method private setAIButtonCallback(Lai/api/ui/AIButton;)V
    .locals 1
    .param p1, "aiButton"    # Lai/api/ui/AIButton;

    .prologue
    .line 118
    new-instance v0, Lai/api/ui/AIDialog$2;

    invoke-direct {v0, p0}, Lai/api/ui/AIDialog$2;-><init>(Lai/api/ui/AIDialog;)V

    invoke-virtual {p1, v0}, Lai/api/ui/AIButton;->setResultsListener(Lai/api/ui/AIButton$AIButtonListener;)V

    .line 147
    new-instance v0, Lai/api/ui/AIDialog$3;

    invoke-direct {v0, p0}, Lai/api/ui/AIDialog$3;-><init>(Lai/api/ui/AIDialog;)V

    invoke-virtual {p1, v0}, Lai/api/ui/AIButton;->setPartialResultsListener(Lai/api/PartialResultsListener;)V

    .line 164
    return-void
.end method

.method private startListening()V
    .locals 1

    .prologue
    .line 167
    iget-object v0, p0, Lai/api/ui/AIDialog;->aiButton:Lai/api/ui/AIButton;

    if-eqz v0, :cond_0

    .line 168
    iget-object v0, p0, Lai/api/ui/AIDialog;->aiButton:Lai/api/ui/AIButton;

    invoke-virtual {v0}, Lai/api/ui/AIButton;->startListening()V

    .line 170
    :cond_0
    return-void
.end method


# virtual methods
.method public close()V
    .locals 2

    .prologue
    .line 173
    iget-object v0, p0, Lai/api/ui/AIDialog;->handler:Landroid/os/Handler;

    new-instance v1, Lai/api/ui/AIDialog$4;

    invoke-direct {v1, p0}, Lai/api/ui/AIDialog$4;-><init>(Lai/api/ui/AIDialog;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 179
    return-void
.end method

.method public getAIService()Lai/api/AIService;
    .locals 1

    .prologue
    .line 186
    iget-object v0, p0, Lai/api/ui/AIDialog;->aiButton:Lai/api/ui/AIButton;

    invoke-virtual {v0}, Lai/api/ui/AIButton;->getAIService()Lai/api/AIService;

    move-result-object v0

    return-object v0
.end method

.method public getDialog()Landroid/app/Dialog;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lai/api/ui/AIDialog;->dialog:Landroid/app/Dialog;

    return-object v0
.end method

.method public pause()V
    .locals 1

    .prologue
    .line 196
    iget-object v0, p0, Lai/api/ui/AIDialog;->aiButton:Lai/api/ui/AIButton;

    if-eqz v0, :cond_0

    .line 197
    iget-object v0, p0, Lai/api/ui/AIDialog;->aiButton:Lai/api/ui/AIButton;

    invoke-virtual {v0}, Lai/api/ui/AIButton;->pause()V

    .line 199
    :cond_0
    return-void
.end method

.method public resume()V
    .locals 1

    .prologue
    .line 208
    iget-object v0, p0, Lai/api/ui/AIDialog;->aiButton:Lai/api/ui/AIButton;

    if-eqz v0, :cond_0

    .line 209
    iget-object v0, p0, Lai/api/ui/AIDialog;->aiButton:Lai/api/ui/AIButton;

    invoke-virtual {v0}, Lai/api/ui/AIButton;->resume()V

    .line 211
    :cond_0
    return-void
.end method

.method public setResultsListener(Lai/api/ui/AIDialog$AIDialogListener;)V
    .locals 0
    .param p1, "resultsListener"    # Lai/api/ui/AIDialog$AIDialogListener;

    .prologue
    .line 85
    iput-object p1, p0, Lai/api/ui/AIDialog;->resultsListener:Lai/api/ui/AIDialog$AIDialogListener;

    .line 86
    return-void
.end method

.method public showAndListen()V
    .locals 2

    .prologue
    .line 93
    iget-object v0, p0, Lai/api/ui/AIDialog;->handler:Landroid/os/Handler;

    new-instance v1, Lai/api/ui/AIDialog$1;

    invoke-direct {v1, p0}, Lai/api/ui/AIDialog$1;-><init>(Lai/api/ui/AIDialog;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 101
    return-void
.end method

.method public textRequest(Lai/api/model/AIRequest;)Lai/api/model/AIResponse;
    .locals 1
    .param p1, "request"    # Lai/api/model/AIRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lai/api/AIServiceException;
        }
    .end annotation

    .prologue
    .line 104
    iget-object v0, p0, Lai/api/ui/AIDialog;->aiButton:Lai/api/ui/AIButton;

    invoke-virtual {v0, p1}, Lai/api/ui/AIButton;->textRequest(Lai/api/model/AIRequest;)Lai/api/model/AIResponse;

    move-result-object v0

    return-object v0
.end method

.method public textRequest(Ljava/lang/String;)Lai/api/model/AIResponse;
    .locals 1
    .param p1, "request"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lai/api/AIServiceException;
        }
    .end annotation

    .prologue
    .line 108
    new-instance v0, Lai/api/model/AIRequest;

    invoke-direct {v0, p1}, Lai/api/model/AIRequest;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lai/api/ui/AIDialog;->textRequest(Lai/api/model/AIRequest;)Lai/api/model/AIResponse;

    move-result-object v0

    return-object v0
.end method
