.class public Lcom/android/gallery3d/ui/ManageCacheDrawer;
.super Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;
.source "ManageCacheDrawer.java"


# instance fields
.field private final mCachePinMargin:I

.field private final mCachePinSize:I

.field private final mCachingText:Lcom/android/gallery3d/ui/StringTexture;

.field private final mCheckedItem:Lcom/android/gallery3d/ui/ResourceTexture;

.field private final mLocalAlbumIcon:Lcom/android/gallery3d/ui/ResourceTexture;

.field private final mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

.field private final mUnCheckedItem:Lcom/android/gallery3d/ui/ResourceTexture;


# direct methods
.method public constructor <init>(Lcom/android/gallery3d/app/GalleryActivity;Lcom/android/gallery3d/ui/SelectionManager;Lcom/android/gallery3d/ui/SlotView;Lcom/android/gallery3d/ui/AlbumSetSlotRenderer$LabelSpec;II)V
    .locals 4
    .parameter "activity"
    .parameter "selectionManager"
    .parameter "slotView"
    .parameter "labelSpec"
    .parameter "cachePinSize"
    .parameter "cachePinMargin"

    .prologue
    .line 41
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;-><init>(Lcom/android/gallery3d/app/GalleryActivity;Lcom/android/gallery3d/ui/SelectionManager;Lcom/android/gallery3d/ui/SlotView;Lcom/android/gallery3d/ui/AlbumSetSlotRenderer$LabelSpec;)V

    move-object v1, p1

    .line 42
    check-cast v1, Landroid/content/Context;

    .line 43
    .local v1, context:Landroid/content/Context;
    new-instance v2, Lcom/android/gallery3d/ui/ResourceTexture;

    const v3, 0x7f020018

    invoke-direct {v2, v1, v3}, Lcom/android/gallery3d/ui/ResourceTexture;-><init>(Landroid/content/Context;I)V

    iput-object v2, p0, Lcom/android/gallery3d/ui/ManageCacheDrawer;->mCheckedItem:Lcom/android/gallery3d/ui/ResourceTexture;

    .line 45
    new-instance v2, Lcom/android/gallery3d/ui/ResourceTexture;

    const v3, 0x7f020017

    invoke-direct {v2, v1, v3}, Lcom/android/gallery3d/ui/ResourceTexture;-><init>(Landroid/content/Context;I)V

    iput-object v2, p0, Lcom/android/gallery3d/ui/ManageCacheDrawer;->mUnCheckedItem:Lcom/android/gallery3d/ui/ResourceTexture;

    .line 47
    new-instance v2, Lcom/android/gallery3d/ui/ResourceTexture;

    const v3, 0x7f020016

    invoke-direct {v2, v1, v3}, Lcom/android/gallery3d/ui/ResourceTexture;-><init>(Landroid/content/Context;I)V

    iput-object v2, p0, Lcom/android/gallery3d/ui/ManageCacheDrawer;->mLocalAlbumIcon:Lcom/android/gallery3d/ui/ResourceTexture;

    .line 49
    const v2, 0x7f0d0156

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 50
    .local v0, cachingLabel:Ljava/lang/String;
    const/high16 v2, 0x4140

    const/4 v3, -0x1

    invoke-static {v0, v2, v3}, Lcom/android/gallery3d/ui/StringTexture;->newInstance(Ljava/lang/String;FI)Lcom/android/gallery3d/ui/StringTexture;

    move-result-object v2

    iput-object v2, p0, Lcom/android/gallery3d/ui/ManageCacheDrawer;->mCachingText:Lcom/android/gallery3d/ui/StringTexture;

    .line 51
    iput-object p2, p0, Lcom/android/gallery3d/ui/ManageCacheDrawer;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    .line 52
    iput p5, p0, Lcom/android/gallery3d/ui/ManageCacheDrawer;->mCachePinSize:I

    .line 53
    iput p6, p0, Lcom/android/gallery3d/ui/ManageCacheDrawer;->mCachePinMargin:I

    .line 54
    return-void
.end method

.method private drawCachingPin(Lcom/android/gallery3d/ui/GLCanvas;Lcom/android/gallery3d/data/Path;IZZII)V
    .locals 9
    .parameter "canvas"
    .parameter "path"
    .parameter "dataSourceType"
    .parameter "isCaching"
    .parameter "chooseToCache"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 92
    invoke-static {p3}, Lcom/android/gallery3d/ui/ManageCacheDrawer;->isLocal(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 93
    iget-object v0, p0, Lcom/android/gallery3d/ui/ManageCacheDrawer;->mLocalAlbumIcon:Lcom/android/gallery3d/ui/ResourceTexture;

    .line 101
    .local v0, icon:Lcom/android/gallery3d/ui/ResourceTexture;
    :goto_0
    iget v4, p0, Lcom/android/gallery3d/ui/ManageCacheDrawer;->mCachePinSize:I

    .line 102
    .local v4, s:I
    iget v7, p0, Lcom/android/gallery3d/ui/ManageCacheDrawer;->mCachePinMargin:I

    .line 103
    .local v7, m:I
    sub-int v1, p6, v7

    sub-int v2, v1, v4

    sub-int v3, p7, v4

    move-object v1, p1

    move v5, v4

    invoke-virtual/range {v0 .. v5}, Lcom/android/gallery3d/ui/ResourceTexture;->draw(Lcom/android/gallery3d/ui/GLCanvas;IIII)V

    .line 105
    if-eqz p4, :cond_0

    .line 106
    iget-object v1, p0, Lcom/android/gallery3d/ui/ManageCacheDrawer;->mCachingText:Lcom/android/gallery3d/ui/StringTexture;

    invoke-virtual {v1}, Lcom/android/gallery3d/ui/StringTexture;->getWidth()I

    move-result v8

    .line 107
    .local v8, w:I
    iget-object v1, p0, Lcom/android/gallery3d/ui/ManageCacheDrawer;->mCachingText:Lcom/android/gallery3d/ui/StringTexture;

    invoke-virtual {v1}, Lcom/android/gallery3d/ui/StringTexture;->getHeight()I

    move-result v6

    .line 109
    .local v6, h:I
    iget-object v1, p0, Lcom/android/gallery3d/ui/ManageCacheDrawer;->mCachingText:Lcom/android/gallery3d/ui/StringTexture;

    sub-int v2, p6, v8

    div-int/lit8 v2, v2, 0x2

    sub-int v3, p7, v6

    invoke-virtual {v1, p1, v2, v3}, Lcom/android/gallery3d/ui/StringTexture;->draw(Lcom/android/gallery3d/ui/GLCanvas;II)V

    .line 111
    .end local v6           #h:I
    .end local v8           #w:I
    :cond_0
    return-void

    .line 94
    .end local v0           #icon:Lcom/android/gallery3d/ui/ResourceTexture;
    .end local v4           #s:I
    .end local v7           #m:I
    :cond_1
    if-eqz p5, :cond_2

    .line 95
    iget-object v0, p0, Lcom/android/gallery3d/ui/ManageCacheDrawer;->mCheckedItem:Lcom/android/gallery3d/ui/ResourceTexture;

    .restart local v0       #icon:Lcom/android/gallery3d/ui/ResourceTexture;
    goto :goto_0

    .line 97
    .end local v0           #icon:Lcom/android/gallery3d/ui/ResourceTexture;
    :cond_2
    iget-object v0, p0, Lcom/android/gallery3d/ui/ManageCacheDrawer;->mUnCheckedItem:Lcom/android/gallery3d/ui/ResourceTexture;

    .restart local v0       #icon:Lcom/android/gallery3d/ui/ResourceTexture;
    goto :goto_0
.end method

.method private static isLocal(I)Z
    .locals 1
    .parameter "dataSourceType"

    .prologue
    .line 57
    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public renderSlot(Lcom/android/gallery3d/ui/GLCanvas;IIII)I
    .locals 20
    .parameter "canvas"
    .parameter "index"
    .parameter "pass"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 62
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/gallery3d/ui/ManageCacheDrawer;->mDataWindow:Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;

    move/from16 v0, p2

    invoke-virtual {v4, v0}, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->get(I)Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;

    move-result-object v13

    .line 64
    .local v13, entry:Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;
    iget v4, v13, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->cacheFlag:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_3

    const/16 v19, 0x1

    .line 65
    .local v19, wantCache:Z
    :goto_0
    if-eqz v19, :cond_4

    iget v4, v13, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->cacheStatus:I

    const/4 v5, 0x3

    if-eq v4, v5, :cond_4

    const/4 v8, 0x1

    .line 67
    .local v8, isCaching:Z
    :goto_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/gallery3d/ui/ManageCacheDrawer;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    iget-object v5, v13, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->setPath:Lcom/android/gallery3d/data/Path;

    invoke-virtual {v4, v5}, Lcom/android/gallery3d/ui/SelectionManager;->isItemSelected(Lcom/android/gallery3d/data/Path;)Z

    move-result v18

    .line 68
    .local v18, selected:Z
    xor-int v9, v19, v18

    .line 69
    .local v9, chooseToCache:Z
    iget v4, v13, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->sourceType:I

    invoke-static {v4}, Lcom/android/gallery3d/ui/ManageCacheDrawer;->isLocal(I)Z

    move-result v4

    if-nez v4, :cond_0

    if-eqz v9, :cond_5

    :cond_0
    const/16 v16, 0x1

    .line 71
    .local v16, available:Z
    :goto_2
    const/16 v17, 0x0

    .line 73
    .local v17, renderRequestFlags:I
    if-nez v16, :cond_1

    .line 74
    const/4 v4, 0x1

    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Lcom/android/gallery3d/ui/GLCanvas;->save(I)V

    .line 75
    const v4, 0x3f19999a

    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Lcom/android/gallery3d/ui/GLCanvas;->multiplyAlpha(F)V

    .line 77
    :cond_1
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p4

    move/from16 v3, p5

    invoke-virtual {v0, v1, v13, v2, v3}, Lcom/android/gallery3d/ui/ManageCacheDrawer;->renderContent(Lcom/android/gallery3d/ui/GLCanvas;Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;II)I

    move-result v4

    or-int v17, v17, v4

    .line 78
    if-nez v16, :cond_2

    invoke-interface/range {p1 .. p1}, Lcom/android/gallery3d/ui/GLCanvas;->restore()V

    .line 80
    :cond_2
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p4

    move/from16 v3, p5

    invoke-virtual {v0, v1, v13, v2, v3}, Lcom/android/gallery3d/ui/ManageCacheDrawer;->renderLabel(Lcom/android/gallery3d/ui/GLCanvas;Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;II)I

    move-result v4

    or-int v17, v17, v4

    .line 82
    iget-object v6, v13, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->setPath:Lcom/android/gallery3d/data/Path;

    iget v7, v13, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->sourceType:I

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move/from16 v10, p4

    move/from16 v11, p5

    invoke-direct/range {v4 .. v11}, Lcom/android/gallery3d/ui/ManageCacheDrawer;->drawCachingPin(Lcom/android/gallery3d/ui/GLCanvas;Lcom/android/gallery3d/data/Path;IZZII)V

    move-object/from16 v10, p0

    move-object/from16 v11, p1

    move/from16 v12, p2

    move/from16 v14, p4

    move/from16 v15, p5

    .line 85
    invoke-virtual/range {v10 .. v15}, Lcom/android/gallery3d/ui/ManageCacheDrawer;->renderOverlay(Lcom/android/gallery3d/ui/GLCanvas;ILcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;II)I

    move-result v4

    or-int v17, v17, v4

    .line 86
    return v17

    .line 64
    .end local v8           #isCaching:Z
    .end local v9           #chooseToCache:Z
    .end local v16           #available:Z
    .end local v17           #renderRequestFlags:I
    .end local v18           #selected:Z
    .end local v19           #wantCache:Z
    :cond_3
    const/16 v19, 0x0

    goto :goto_0

    .line 65
    .restart local v19       #wantCache:Z
    :cond_4
    const/4 v8, 0x0

    goto :goto_1

    .line 69
    .restart local v8       #isCaching:Z
    .restart local v9       #chooseToCache:Z
    .restart local v18       #selected:Z
    :cond_5
    const/16 v16, 0x0

    goto :goto_2
.end method
