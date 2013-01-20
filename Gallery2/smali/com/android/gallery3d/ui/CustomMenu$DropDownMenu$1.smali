.class Lcom/android/gallery3d/ui/CustomMenu$DropDownMenu$1;
.super Ljava/lang/Object;
.source "CustomMenu.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/gallery3d/ui/CustomMenu$DropDownMenu;-><init>(Landroid/content/Context;Landroid/widget/Button;ILandroid/widget/PopupMenu$OnMenuItemClickListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/gallery3d/ui/CustomMenu$DropDownMenu;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/ui/CustomMenu$DropDownMenu;)V
    .locals 0
    .parameter

    .prologue
    .line 48
    iput-object p1, p0, Lcom/android/gallery3d/ui/CustomMenu$DropDownMenu$1;->this$0:Lcom/android/gallery3d/ui/CustomMenu$DropDownMenu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/gallery3d/ui/CustomMenu$DropDownMenu$1;->this$0:Lcom/android/gallery3d/ui/CustomMenu$DropDownMenu;

    #getter for: Lcom/android/gallery3d/ui/CustomMenu$DropDownMenu;->mPopupMenu:Landroid/widget/PopupMenu;
    invoke-static {v0}, Lcom/android/gallery3d/ui/CustomMenu$DropDownMenu;->access$000(Lcom/android/gallery3d/ui/CustomMenu$DropDownMenu;)Landroid/widget/PopupMenu;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/PopupMenu;->show()V

    .line 51
    return-void
.end method
