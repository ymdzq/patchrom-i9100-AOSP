.class Lcom/android/internal/policy/impl/GlobalActions$11;
.super Ljava/lang/Object;
.source "GlobalActions.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/GlobalActions;->createRebootDialog()Landroid/app/AlertDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/GlobalActions;

.field final synthetic val$rebootReasons:[Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/GlobalActions;[Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 866
    iput-object p1, p0, Lcom/android/internal/policy/impl/GlobalActions$11;->this$0:Lcom/android/internal/policy/impl/GlobalActions;

    iput-object p2, p0, Lcom/android/internal/policy/impl/GlobalActions$11;->val$rebootReasons:[Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 870
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions$11;->this$0:Lcom/android/internal/policy/impl/GlobalActions;

    #getter for: Lcom/android/internal/policy/impl/GlobalActions;->mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;
    invoke-static {v0}, Lcom/android/internal/policy/impl/GlobalActions;->access$500(Lcom/android/internal/policy/impl/GlobalActions;)Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions$11;->val$rebootReasons:[Ljava/lang/String;

    invoke-static {}, Lcom/android/internal/policy/impl/GlobalActions;->access$2000()I

    move-result v2

    aget-object v1, v1, v2

    invoke-interface {v0, v1}, Landroid/view/WindowManagerPolicy$WindowManagerFuncs;->reboot(Ljava/lang/String;)V

    .line 871
    return-void
.end method
