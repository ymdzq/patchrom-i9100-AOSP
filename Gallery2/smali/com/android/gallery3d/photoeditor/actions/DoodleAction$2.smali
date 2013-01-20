.class Lcom/android/gallery3d/photoeditor/actions/DoodleAction$2;
.super Ljava/lang/Object;
.source "DoodleAction.java"

# interfaces
.implements Lcom/android/gallery3d/photoeditor/actions/ColorSeekBar$OnColorChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/gallery3d/photoeditor/actions/DoodleAction;->prepare()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/gallery3d/photoeditor/actions/DoodleAction;

.field final synthetic val$doodleView:Lcom/android/gallery3d/photoeditor/actions/DoodleView;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/photoeditor/actions/DoodleAction;Lcom/android/gallery3d/photoeditor/actions/DoodleView;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 62
    iput-object p1, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleAction$2;->this$0:Lcom/android/gallery3d/photoeditor/actions/DoodleAction;

    iput-object p2, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleAction$2;->val$doodleView:Lcom/android/gallery3d/photoeditor/actions/DoodleView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onColorChanged(IZ)V
    .locals 1
    .parameter "color"
    .parameter "fromUser"

    .prologue
    .line 66
    if-eqz p2, :cond_0

    .line 67
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleAction$2;->val$doodleView:Lcom/android/gallery3d/photoeditor/actions/DoodleView;

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->setColor(I)V

    .line 69
    :cond_0
    return-void
.end method
