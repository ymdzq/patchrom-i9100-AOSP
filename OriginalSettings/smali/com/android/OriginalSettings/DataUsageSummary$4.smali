.class Lcom/android/OriginalSettings/DataUsageSummary$4;
.super Ljava/lang/Object;
.source "DataUsageSummary.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/OriginalSettings/DataUsageSummary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/OriginalSettings/DataUsageSummary;


# direct methods
.method constructor <init>(Lcom/android/OriginalSettings/DataUsageSummary;)V
    .locals 0
    .parameter

    .prologue
    .line 1012
    iput-object p1, p0, Lcom/android/OriginalSettings/DataUsageSummary$4;->this$0:Lcom/android/OriginalSettings/DataUsageSummary;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 4
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    .line 1015
    iget-object v2, p0, Lcom/android/OriginalSettings/DataUsageSummary$4;->this$0:Lcom/android/OriginalSettings/DataUsageSummary;

    #getter for: Lcom/android/OriginalSettings/DataUsageSummary;->mBinding:Z
    invoke-static {v2}, Lcom/android/OriginalSettings/DataUsageSummary;->access$300(Lcom/android/OriginalSettings/DataUsageSummary;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1030
    :goto_0
    return-void

    .line 1017
    :cond_0
    move v1, p2

    .line 1018
    .local v1, dataEnabled:Z
    iget-object v2, p0, Lcom/android/OriginalSettings/DataUsageSummary$4;->this$0:Lcom/android/OriginalSettings/DataUsageSummary;

    #getter for: Lcom/android/OriginalSettings/DataUsageSummary;->mCurrentTab:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/OriginalSettings/DataUsageSummary;->access$400(Lcom/android/OriginalSettings/DataUsageSummary;)Ljava/lang/String;

    move-result-object v0

    .line 1019
    .local v0, currentTab:Ljava/lang/String;
    const-string v2, "mobile"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1020
    if-eqz v1, :cond_2

    .line 1021
    iget-object v2, p0, Lcom/android/OriginalSettings/DataUsageSummary$4;->this$0:Lcom/android/OriginalSettings/DataUsageSummary;

    const/4 v3, 0x1

    #calls: Lcom/android/OriginalSettings/DataUsageSummary;->setMobileDataEnabled(Z)V
    invoke-static {v2, v3}, Lcom/android/OriginalSettings/DataUsageSummary;->access$500(Lcom/android/OriginalSettings/DataUsageSummary;Z)V

    .line 1029
    :cond_1
    :goto_1
    iget-object v2, p0, Lcom/android/OriginalSettings/DataUsageSummary$4;->this$0:Lcom/android/OriginalSettings/DataUsageSummary;

    const/4 v3, 0x0

    #calls: Lcom/android/OriginalSettings/DataUsageSummary;->updatePolicy(Z)V
    invoke-static {v2, v3}, Lcom/android/OriginalSettings/DataUsageSummary;->access$600(Lcom/android/OriginalSettings/DataUsageSummary;Z)V

    goto :goto_0

    .line 1025
    :cond_2
    iget-object v2, p0, Lcom/android/OriginalSettings/DataUsageSummary$4;->this$0:Lcom/android/OriginalSettings/DataUsageSummary;

    invoke-static {v2}, Lcom/android/OriginalSettings/DataUsageSummary$ConfirmDataDisableFragment;->show(Lcom/android/OriginalSettings/DataUsageSummary;)V

    goto :goto_1
.end method
