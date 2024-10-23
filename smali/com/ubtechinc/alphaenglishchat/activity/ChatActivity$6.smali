.class Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity$6;
.super Landroid/os/Handler;
.source "ChatActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;


# direct methods
.method constructor <init>(Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;

    .prologue
    .line 1127
    iput-object p1, p0, Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity$6;->this$0:Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 10
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 1130
    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Ljava/lang/String;

    .line 1131
    .local v6, "text":Ljava/lang/String;
    if-nez v6, :cond_1

    .line 1193
    :cond_0
    :goto_0
    return-void

    .line 1134
    :cond_1
    iget v7, p1, Landroid/os/Message;->what:I

    packed-switch v7, :pswitch_data_0

    goto :goto_0

    .line 1136
    :pswitch_0
    const-string v7, "ChatActivity"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "onlineText="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1138
    const-string v7, "NLU_Result:"

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 1141
    iget-object v7, p0, Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity$6;->this$0:Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;

    invoke-static {v7, v6}, Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;->access$3302(Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 1142
    iget-object v7, p0, Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity$6;->this$0:Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;

    invoke-static {v7}, Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;->access$2100(Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;)V

    goto :goto_0

    .line 1146
    :pswitch_1
    const-string v7, "ChatActivity"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "OfflineText="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1147
    const-string v7, "Local_Result:"

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 1148
    const-string v7, "rule:"

    invoke-virtual {v6, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    .line 1149
    .local v3, "start":I
    const-string v7, " action:"

    invoke-virtual {v6, v7, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v1

    .line 1150
    .local v1, "end":I
    const-string v7, " tag:"

    invoke-virtual {v6, v7, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v5

    .line 1151
    .local v5, "tagIndex":I
    if-ge v3, v1, :cond_2

    .line 1152
    add-int/lit8 v7, v3, 0x5

    invoke-virtual {v6, v7, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 1153
    .local v2, "rule":Ljava/lang/String;
    add-int/lit8 v7, v1, 0x8

    invoke-virtual {v6, v7, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 1154
    .local v0, "action":Ljava/lang/String;
    add-int/lit8 v7, v5, 0x5

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 1155
    .local v4, "tag":Ljava/lang/String;
    const-string v7, "ChatActivity"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "rule="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1156
    const-string v7, "ChatActivity"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "action="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1157
    const-string v7, "ChatActivity"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "tag="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1158
    iget-object v7, p0, Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity$6;->this$0:Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;

    new-instance v8, Lcom/ubtechinc/alphaenglishchat/resultEntity/ParseResult;

    invoke-direct {v8}, Lcom/ubtechinc/alphaenglishchat/resultEntity/ParseResult;-><init>()V

    invoke-static {v7, v8}, Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;->access$802(Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;Lcom/ubtechinc/alphaenglishchat/resultEntity/ParseResult;)Lcom/ubtechinc/alphaenglishchat/resultEntity/ParseResult;

    .line 1159
    iget-object v7, p0, Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity$6;->this$0:Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;

    invoke-static {v7}, Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;->access$800(Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;)Lcom/ubtechinc/alphaenglishchat/resultEntity/ParseResult;

    move-result-object v7

    invoke-virtual {v7, v2}, Lcom/ubtechinc/alphaenglishchat/resultEntity/ParseResult;->setDomain(Ljava/lang/String;)V

    .line 1160
    iget-object v7, p0, Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity$6;->this$0:Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;

    invoke-static {v7}, Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;->access$800(Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;)Lcom/ubtechinc/alphaenglishchat/resultEntity/ParseResult;

    move-result-object v7

    invoke-virtual {v7, v0}, Lcom/ubtechinc/alphaenglishchat/resultEntity/ParseResult;->setAction(Ljava/lang/String;)V

    .line 1161
    iget-object v7, p0, Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity$6;->this$0:Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;

    invoke-static {v7}, Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;->access$800(Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;)Lcom/ubtechinc/alphaenglishchat/resultEntity/ParseResult;

    move-result-object v7

    invoke-virtual {v7, v4}, Lcom/ubtechinc/alphaenglishchat/resultEntity/ParseResult;->setSentence(Ljava/lang/String;)V

    .line 1162
    iget-object v7, p0, Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity$6;->this$0:Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;

    invoke-static {v7}, Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;->access$800(Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;)Lcom/ubtechinc/alphaenglishchat/resultEntity/ParseResult;

    move-result-object v7

    invoke-virtual {v7}, Lcom/ubtechinc/alphaenglishchat/resultEntity/ParseResult;->getConceptValue()Ljava/util/HashMap;

    move-result-object v7

    const-string v8, "action"

    invoke-virtual {v7, v8, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1163
    iget-object v7, p0, Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity$6;->this$0:Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;

    invoke-static {v7}, Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;->access$800(Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;)Lcom/ubtechinc/alphaenglishchat/resultEntity/ParseResult;

    move-result-object v7

    invoke-virtual {v7}, Lcom/ubtechinc/alphaenglishchat/resultEntity/ParseResult;->getConceptValue()Ljava/util/HashMap;

    move-result-object v7

    const-string v8, "tag"

    invoke-virtual {v7, v8, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1164
    iget-object v7, p0, Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity$6;->this$0:Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;

    invoke-static {v7}, Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;->access$900(Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;)Lcom/ubtechinc/alphaenglishchat/domain/DomainManager;

    move-result-object v7

    iget-object v8, p0, Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity$6;->this$0:Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;

    invoke-static {v8}, Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;->access$800(Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;)Lcom/ubtechinc/alphaenglishchat/resultEntity/ParseResult;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/ubtechinc/alphaenglishchat/domain/DomainManager;->addToQueue(Lcom/ubtechinc/alphaenglishchat/resultEntity/ParseResult;)V

    goto/16 :goto_0

    .line 1167
    .end local v0    # "action":Ljava/lang/String;
    .end local v2    # "rule":Ljava/lang/String;
    .end local v4    # "tag":Ljava/lang/String;
    :cond_2
    iget-object v7, p0, Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity$6;->this$0:Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;

    invoke-static {v7, v6}, Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;->access$3400(Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1172
    .end local v1    # "end":I
    .end local v3    # "start":I
    .end local v5    # "tagIndex":I
    :pswitch_2
    const-string v7, "ChatActivity"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "asrText="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1173
    iget-object v7, p0, Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity$6;->this$0:Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;

    invoke-static {v7, v6}, Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;->access$2902(Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 1175
    iget-object v7, p0, Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity$6;->this$0:Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;

    invoke-static {v7, v6}, Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;->access$3500(Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1178
    :pswitch_3
    const-string v7, "ChatActivity"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "strActionFileName="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1179
    iget-object v7, p0, Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity$6;->this$0:Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;

    invoke-static {v7}, Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;->access$3600(Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_0

    .line 1180
    const-string v7, "ChatActivity"

    const-string v8, "strActionFileName=1"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1181
    iget-object v7, p0, Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity$6;->this$0:Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;

    iget-object v8, p0, Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity$6;->this$0:Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;

    invoke-static {v8}, Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;->access$1100(Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;)I

    move-result v8

    and-int/lit8 v8, v8, -0x3

    invoke-static {v7, v8}, Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;->access$1102(Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;I)I

    .line 1182
    iget-object v7, p0, Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity$6;->this$0:Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;

    const/4 v8, 0x0

    invoke-static {v7, v8}, Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;->access$3602(Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 1183
    iget-object v7, p0, Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity$6;->this$0:Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;

    invoke-static {v7}, Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;->access$1800(Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;)V

    goto/16 :goto_0

    .line 1187
    :pswitch_4
    iget-object v7, p0, Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity$6;->this$0:Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;

    invoke-static {v7}, Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;->access$1800(Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;)V

    goto/16 :goto_0

    .line 1190
    :pswitch_5
    iget-object v7, p0, Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity$6;->this$0:Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;

    invoke-static {v7}, Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;->access$1800(Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;)V

    goto/16 :goto_0

    .line 1134
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method
