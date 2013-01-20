.class public Lcom/android/gallery3d/ui/CustomMenu;
.super Ljava/lang/Object;
.source "CustomMenu.java"

# interfaces
.implements Landroid/widget/PopupMenu$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/gallery3d/ui/CustomMenu$DropDownMenu;
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mListener:Landroid/widget/PopupMenu$OnMenuItemClickListener;

.field private mMenus:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/gallery3d/ui/CustomMenu$DropDownMenu;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    iput-object p1, p0, Lcom/android/gallery3d/ui/CustomMenu;->mContext:Landroid/content/Context;

    .line 72
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/ui/CustomMenu;->mMenus:Ljava/util/ArrayList;

    .line 73
    return-void
.end method


# virtual methods
.method public addDropDownMenu(Landroid/widget/Button;I)Lcom/android/gallery3d/ui/CustomMenu$DropDownMenu;
    .locals 2
    .parameter "button"
    .parameter "menuId"

    .prologue
    .line 76
    new-instance v0, Lcom/android/gallery3d/ui/CustomMenu$DropDownMenu;

    iget-object v1, p0, Lcom/android/gallery3d/ui/CustomMenu;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p1, p2, p0}, Lcom/android/gallery3d/ui/CustomMenu$DropDownMenu;-><init>(Landroid/content/Context;Landroid/widget/Button;ILandroid/widget/PopupMenu$OnMenuItemClickListener;)V

    .line 77
    .local v0, menu:Lcom/android/gallery3d/ui/CustomMenu$DropDownMenu;
    iget-object v1, p0, Lcom/android/gallery3d/ui/CustomMenu;->mMenus:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 78
    return-object v0
.end method

.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 1
    .parameter "item"

    .prologue
    .line 86
    iget-object v0, p0, Lcom/android/gallery3d/ui/CustomMenu;->mListener:Landroid/widget/PopupMenu$OnMenuItemClickListener;

    if-eqz v0, :cond_0

    .line 87
    iget-object v0, p0, Lcom/android/gallery3d/ui/CustomMenu;->mListener:Landroid/widget/PopupMenu$OnMenuItemClickListener;

    invoke-interface {v0, p1}, Landroid/widget/PopupMenu$OnMenuItemClickListener;->onMenuItemClick(Landroid/view/MenuItem;)Z

    move-result v0

    .line 89
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setOnMenuItemClickListener(Landroid/widget/PopupMenu$OnMenuItemClickListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 82
    iput-object p1, p0, Lcom/android/gallery3d/ui/CustomMenu;->mListener:Landroid/widget/PopupMenu$OnMenuItemClickListener;

    .line 83
    return-void
.end method
