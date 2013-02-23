.class Lcom/android/OriginalSettings/wifi/WpsDialog$1WpsListener;
.super Ljava/lang/Object;
.source "WpsDialog.java"

# interfaces
.implements Landroid/net/wifi/WifiManager$WpsListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/OriginalSettings/wifi/WpsDialog;-><init>(Landroid/content/Context;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "WpsListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/OriginalSettings/wifi/WpsDialog;


# direct methods
.method constructor <init>(Lcom/android/OriginalSettings/wifi/WpsDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 83
    iput-object p1, p0, Lcom/android/OriginalSettings/wifi/WpsDialog$1WpsListener;->this$0:Lcom/android/OriginalSettings/wifi/WpsDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion()V
    .locals 4

    .prologue
    .line 94
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WpsDialog$1WpsListener;->this$0:Lcom/android/OriginalSettings/wifi/WpsDialog;

    sget-object v1, Lcom/android/OriginalSettings/wifi/WpsDialog$DialogState;->WPS_COMPLETE:Lcom/android/OriginalSettings/wifi/WpsDialog$DialogState;

    iget-object v2, p0, Lcom/android/OriginalSettings/wifi/WpsDialog$1WpsListener;->this$0:Lcom/android/OriginalSettings/wifi/WpsDialog;

    #getter for: Lcom/android/OriginalSettings/wifi/WpsDialog;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/OriginalSettings/wifi/WpsDialog;->access$000(Lcom/android/OriginalSettings/wifi/WpsDialog;)Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0b01db

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    #calls: Lcom/android/OriginalSettings/wifi/WpsDialog;->updateDialog(Lcom/android/OriginalSettings/wifi/WpsDialog$DialogState;Ljava/lang/String;)V
    invoke-static {v0, v1, v2}, Lcom/android/OriginalSettings/wifi/WpsDialog;->access$100(Lcom/android/OriginalSettings/wifi/WpsDialog;Lcom/android/OriginalSettings/wifi/WpsDialog$DialogState;Ljava/lang/String;)V

    .line 96
    return-void
.end method

.method public onFailure(I)V
    .locals 3
    .parameter "reason"

    .prologue
    .line 100
    packed-switch p1, :pswitch_data_0

    .line 114
    :pswitch_0
    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/WpsDialog$1WpsListener;->this$0:Lcom/android/OriginalSettings/wifi/WpsDialog;

    #getter for: Lcom/android/OriginalSettings/wifi/WpsDialog;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/OriginalSettings/wifi/WpsDialog;->access$000(Lcom/android/OriginalSettings/wifi/WpsDialog;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0b01de

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 117
    .local v0, msg:Ljava/lang/String;
    :goto_0
    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/WpsDialog$1WpsListener;->this$0:Lcom/android/OriginalSettings/wifi/WpsDialog;

    sget-object v2, Lcom/android/OriginalSettings/wifi/WpsDialog$DialogState;->WPS_FAILED:Lcom/android/OriginalSettings/wifi/WpsDialog$DialogState;

    #calls: Lcom/android/OriginalSettings/wifi/WpsDialog;->updateDialog(Lcom/android/OriginalSettings/wifi/WpsDialog$DialogState;Ljava/lang/String;)V
    invoke-static {v1, v2, v0}, Lcom/android/OriginalSettings/wifi/WpsDialog;->access$100(Lcom/android/OriginalSettings/wifi/WpsDialog;Lcom/android/OriginalSettings/wifi/WpsDialog$DialogState;Ljava/lang/String;)V

    .line 118
    return-void

    .line 102
    .end local v0           #msg:Ljava/lang/String;
    :pswitch_1
    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/WpsDialog$1WpsListener;->this$0:Lcom/android/OriginalSettings/wifi/WpsDialog;

    #getter for: Lcom/android/OriginalSettings/wifi/WpsDialog;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/OriginalSettings/wifi/WpsDialog;->access$000(Lcom/android/OriginalSettings/wifi/WpsDialog;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0b01e2

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 103
    .restart local v0       #msg:Ljava/lang/String;
    goto :goto_0

    .line 105
    .end local v0           #msg:Ljava/lang/String;
    :pswitch_2
    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/WpsDialog$1WpsListener;->this$0:Lcom/android/OriginalSettings/wifi/WpsDialog;

    #getter for: Lcom/android/OriginalSettings/wifi/WpsDialog;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/OriginalSettings/wifi/WpsDialog;->access$000(Lcom/android/OriginalSettings/wifi/WpsDialog;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0b01df

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 106
    .restart local v0       #msg:Ljava/lang/String;
    goto :goto_0

    .line 108
    .end local v0           #msg:Ljava/lang/String;
    :pswitch_3
    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/WpsDialog$1WpsListener;->this$0:Lcom/android/OriginalSettings/wifi/WpsDialog;

    #getter for: Lcom/android/OriginalSettings/wifi/WpsDialog;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/OriginalSettings/wifi/WpsDialog;->access$000(Lcom/android/OriginalSettings/wifi/WpsDialog;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0b01e0

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 109
    .restart local v0       #msg:Ljava/lang/String;
    goto :goto_0

    .line 111
    .end local v0           #msg:Ljava/lang/String;
    :pswitch_4
    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/WpsDialog$1WpsListener;->this$0:Lcom/android/OriginalSettings/wifi/WpsDialog;

    #getter for: Lcom/android/OriginalSettings/wifi/WpsDialog;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/OriginalSettings/wifi/WpsDialog;->access$000(Lcom/android/OriginalSettings/wifi/WpsDialog;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0b01dd

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 112
    .restart local v0       #msg:Ljava/lang/String;
    goto :goto_0

    .line 100
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public onStartSuccess(Ljava/lang/String;)V
    .locals 5
    .parameter "pin"

    .prologue
    .line 85
    if-eqz p1, :cond_0

    .line 86
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WpsDialog$1WpsListener;->this$0:Lcom/android/OriginalSettings/wifi/WpsDialog;

    sget-object v1, Lcom/android/OriginalSettings/wifi/WpsDialog$DialogState;->WPS_START:Lcom/android/OriginalSettings/wifi/WpsDialog$DialogState;

    iget-object v2, p0, Lcom/android/OriginalSettings/wifi/WpsDialog$1WpsListener;->this$0:Lcom/android/OriginalSettings/wifi/WpsDialog;

    #getter for: Lcom/android/OriginalSettings/wifi/WpsDialog;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/OriginalSettings/wifi/WpsDialog;->access$000(Lcom/android/OriginalSettings/wifi/WpsDialog;)Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0b01da

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    #calls: Lcom/android/OriginalSettings/wifi/WpsDialog;->updateDialog(Lcom/android/OriginalSettings/wifi/WpsDialog$DialogState;Ljava/lang/String;)V
    invoke-static {v0, v1, v2}, Lcom/android/OriginalSettings/wifi/WpsDialog;->access$100(Lcom/android/OriginalSettings/wifi/WpsDialog;Lcom/android/OriginalSettings/wifi/WpsDialog$DialogState;Ljava/lang/String;)V

    .line 92
    :goto_0
    return-void

    .line 89
    :cond_0
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WpsDialog$1WpsListener;->this$0:Lcom/android/OriginalSettings/wifi/WpsDialog;

    sget-object v1, Lcom/android/OriginalSettings/wifi/WpsDialog$DialogState;->WPS_START:Lcom/android/OriginalSettings/wifi/WpsDialog$DialogState;

    iget-object v2, p0, Lcom/android/OriginalSettings/wifi/WpsDialog$1WpsListener;->this$0:Lcom/android/OriginalSettings/wifi/WpsDialog;

    #getter for: Lcom/android/OriginalSettings/wifi/WpsDialog;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/OriginalSettings/wifi/WpsDialog;->access$000(Lcom/android/OriginalSettings/wifi/WpsDialog;)Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0b01d9

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    #calls: Lcom/android/OriginalSettings/wifi/WpsDialog;->updateDialog(Lcom/android/OriginalSettings/wifi/WpsDialog$DialogState;Ljava/lang/String;)V
    invoke-static {v0, v1, v2}, Lcom/android/OriginalSettings/wifi/WpsDialog;->access$100(Lcom/android/OriginalSettings/wifi/WpsDialog;Lcom/android/OriginalSettings/wifi/WpsDialog$DialogState;Ljava/lang/String;)V

    goto :goto_0
.end method
