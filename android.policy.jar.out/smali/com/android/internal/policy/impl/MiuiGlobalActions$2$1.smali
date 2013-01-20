.class Lcom/android/internal/policy/impl/MiuiGlobalActions$2$1;
.super Ljava/lang/Object;
.source "MiuiGlobalActions.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/MiuiGlobalActions$2;->onToggle(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/internal/policy/impl/MiuiGlobalActions$2;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/MiuiGlobalActions$2;)V
    .locals 0
    .parameter

    .prologue
    .line 179
    iput-object p1, p0, Lcom/android/internal/policy/impl/MiuiGlobalActions$2$1;->this$1:Lcom/android/internal/policy/impl/MiuiGlobalActions$2;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v2, 0x1

    .line 182
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiGlobalActions$2$1;->this$1:Lcom/android/internal/policy/impl/MiuiGlobalActions$2;

    iget-object v0, v0, Lcom/android/internal/policy/impl/MiuiGlobalActions$2;->this$0:Lcom/android/internal/policy/impl/MiuiGlobalActions;

    invoke-static {v0}, Lcom/android/internal/policy/impl/MiuiGlobalActions;->access$400(Lcom/android/internal/policy/impl/MiuiGlobalActions;)Lmiui/security/ChooseLockSettingsHelper;

    move-result-object v0

    invoke-virtual {v0, v2}, Lmiui/security/ChooseLockSettingsHelper;->setPrivacyModeEnabled(Z)V

    .line 183
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiGlobalActions$2$1;->this$1:Lcom/android/internal/policy/impl/MiuiGlobalActions$2;

    iget-object v0, v0, Lcom/android/internal/policy/impl/MiuiGlobalActions$2;->this$0:Lcom/android/internal/policy/impl/MiuiGlobalActions;

    #getter for: Lcom/android/internal/policy/impl/MiuiGlobalActions;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/internal/policy/impl/MiuiGlobalActions;->access$100(Lcom/android/internal/policy/impl/MiuiGlobalActions;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x60c0173

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 184
    return-void
.end method
