.class Lcom/android/internal/policy/impl/MiuiGlobalActions$2$2;
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
    .line 186
    iput-object p1, p0, Lcom/android/internal/policy/impl/MiuiGlobalActions$2$2;->this$1:Lcom/android/internal/policy/impl/MiuiGlobalActions$2;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 189
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 190
    return-void
.end method
