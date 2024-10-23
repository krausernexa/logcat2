.class Lcom/ubtechinc/alpha2robot/Alpha2RobotApi$2;
.super Ljava/lang/Object;
.source "Alpha2RobotApi.java"

# interfaces
.implements Lcom/ubtechinc/alpha2ctrlapp/network/action/ClientAuthorizeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ubtechinc/alpha2robot/Alpha2RobotApi;->doProcess(Lcom/ubtechinc/alpha2ctrlapp/network/action/ClientAuthorizeListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ubtechinc/alpha2robot/Alpha2RobotApi;

.field final synthetic val$listener:Lcom/ubtechinc/alpha2ctrlapp/network/action/ClientAuthorizeListener;


# direct methods
.method constructor <init>(Lcom/ubtechinc/alpha2robot/Alpha2RobotApi;Lcom/ubtechinc/alpha2ctrlapp/network/action/ClientAuthorizeListener;)V
    .locals 0
    .param p1, "this$0"    # Lcom/ubtechinc/alpha2robot/Alpha2RobotApi;

    .prologue
    .line 1142
    iput-object p1, p0, Lcom/ubtechinc/alpha2robot/Alpha2RobotApi$2;->this$0:Lcom/ubtechinc/alpha2robot/Alpha2RobotApi;

    iput-object p2, p0, Lcom/ubtechinc/alpha2robot/Alpha2RobotApi$2;->val$listener:Lcom/ubtechinc/alpha2ctrlapp/network/action/ClientAuthorizeListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(ILjava/lang/String;)V
    .locals 3
    .param p1, "code"    # I
    .param p2, "info"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    .line 1147
    if-ne p1, v2, :cond_1

    .line 1148
    iget-object v0, p0, Lcom/ubtechinc/alpha2robot/Alpha2RobotApi$2;->this$0:Lcom/ubtechinc/alpha2robot/Alpha2RobotApi;

    invoke-static {v0, v2}, Lcom/ubtechinc/alpha2robot/Alpha2RobotApi;->access$1002(Lcom/ubtechinc/alpha2robot/Alpha2RobotApi;Z)Z

    .line 1149
    iget-object v0, p0, Lcom/ubtechinc/alpha2robot/Alpha2RobotApi$2;->this$0:Lcom/ubtechinc/alpha2robot/Alpha2RobotApi;

    invoke-static {v0}, Lcom/ubtechinc/alpha2robot/Alpha2RobotApi;->access$1200(Lcom/ubtechinc/alpha2robot/Alpha2RobotApi;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-object v1, p0, Lcom/ubtechinc/alpha2robot/Alpha2RobotApi$2;->this$0:Lcom/ubtechinc/alpha2robot/Alpha2RobotApi;

    invoke-static {v1}, Lcom/ubtechinc/alpha2robot/Alpha2RobotApi;->access$1100(Lcom/ubtechinc/alpha2robot/Alpha2RobotApi;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1159
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/ubtechinc/alpha2robot/Alpha2RobotApi$2;->val$listener:Lcom/ubtechinc/alpha2ctrlapp/network/action/ClientAuthorizeListener;

    invoke-interface {v0, p1, p2}, Lcom/ubtechinc/alpha2ctrlapp/network/action/ClientAuthorizeListener;->onResult(ILjava/lang/String;)V

    .line 1160
    return-void

    .line 1151
    :cond_1
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 1152
    iget-object v0, p0, Lcom/ubtechinc/alpha2robot/Alpha2RobotApi$2;->this$0:Lcom/ubtechinc/alpha2robot/Alpha2RobotApi;

    invoke-static {v0, v2}, Lcom/ubtechinc/alpha2robot/Alpha2RobotApi;->access$1002(Lcom/ubtechinc/alpha2robot/Alpha2RobotApi;Z)Z

    .line 1153
    iget-object v0, p0, Lcom/ubtechinc/alpha2robot/Alpha2RobotApi$2;->this$0:Lcom/ubtechinc/alpha2robot/Alpha2RobotApi;

    invoke-static {v0, v2}, Lcom/ubtechinc/alpha2robot/Alpha2RobotApi;->access$702(Lcom/ubtechinc/alpha2robot/Alpha2RobotApi;Z)Z

    .line 1154
    iget-object v0, p0, Lcom/ubtechinc/alpha2robot/Alpha2RobotApi$2;->this$0:Lcom/ubtechinc/alpha2robot/Alpha2RobotApi;

    invoke-static {v0}, Lcom/ubtechinc/alpha2robot/Alpha2RobotApi;->access$1200(Lcom/ubtechinc/alpha2robot/Alpha2RobotApi;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-object v1, p0, Lcom/ubtechinc/alpha2robot/Alpha2RobotApi$2;->this$0:Lcom/ubtechinc/alpha2robot/Alpha2RobotApi;

    invoke-static {v1}, Lcom/ubtechinc/alpha2robot/Alpha2RobotApi;->access$1100(Lcom/ubtechinc/alpha2robot/Alpha2RobotApi;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1156
    iget-object v0, p0, Lcom/ubtechinc/alpha2robot/Alpha2RobotApi$2;->this$0:Lcom/ubtechinc/alpha2robot/Alpha2RobotApi;

    invoke-static {v0}, Lcom/ubtechinc/alpha2robot/Alpha2RobotApi;->access$1200(Lcom/ubtechinc/alpha2robot/Alpha2RobotApi;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1157
    invoke-static {}, Lcom/ubtechinc/alpha2robot/Alpha2RobotApi;->access$1300()Ljava/lang/String;

    move-result-object v1

    .line 1156
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    goto :goto_0
.end method
