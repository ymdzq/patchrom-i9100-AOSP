.class public Lcom/android/gallery3d/app/GalleryActionBar;
.super Ljava/lang/Object;
.source "GalleryActionBar.java"

# interfaces
.implements Landroid/app/ActionBar$OnNavigationListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/gallery3d/app/GalleryActionBar$ClusterAdapter;,
        Lcom/android/gallery3d/app/GalleryActionBar$ActionItem;,
        Lcom/android/gallery3d/app/GalleryActionBar$ClusterRunner;
    }
.end annotation


# static fields
.field private static final sClusterItems:[Lcom/android/gallery3d/app/GalleryActionBar$ActionItem;


# instance fields
.field private mActionBar:Landroid/app/ActionBar;

.field private mActions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mActivity:Lcom/android/gallery3d/app/GalleryActivity;

.field private mAdapter:Lcom/android/gallery3d/app/GalleryActionBar$ClusterAdapter;

.field private mClusterRunner:Lcom/android/gallery3d/app/GalleryActionBar$ClusterRunner;

.field private mContext:Landroid/content/Context;

.field private mCurrentIndex:I

.field private mInflater:Landroid/view/LayoutInflater;

.field private mTitles:[Ljava/lang/CharSequence;


# direct methods
.method static constructor <clinit>()V
    .locals 14

    .prologue
    const/4 v13, 0x4

    const/4 v12, 0x2

    const/4 v3, 0x0

    const/4 v1, 0x1

    .line 79
    const/4 v0, 0x5

    new-array v11, v0, [Lcom/android/gallery3d/app/GalleryActionBar$ActionItem;

    new-instance v0, Lcom/android/gallery3d/app/GalleryActionBar$ActionItem;

    const v4, 0x7f0d019d

    const v5, 0x7f0d015e

    move v2, v1

    invoke-direct/range {v0 .. v5}, Lcom/android/gallery3d/app/GalleryActionBar$ActionItem;-><init>(IZZII)V

    aput-object v0, v11, v3

    new-instance v4, Lcom/android/gallery3d/app/GalleryActionBar$ActionItem;

    const v8, 0x7f0d019f

    const v9, 0x7f0d0174

    const v10, 0x7f0d015a

    move v5, v13

    move v6, v1

    move v7, v3

    invoke-direct/range {v4 .. v10}, Lcom/android/gallery3d/app/GalleryActionBar$ActionItem;-><init>(IZZIII)V

    aput-object v4, v11, v1

    new-instance v4, Lcom/android/gallery3d/app/GalleryActionBar$ActionItem;

    const v8, 0x7f0d019e

    const v9, 0x7f0d0173

    const v10, 0x7f0d015b

    move v5, v12

    move v6, v1

    move v7, v3

    invoke-direct/range {v4 .. v10}, Lcom/android/gallery3d/app/GalleryActionBar$ActionItem;-><init>(IZZIII)V

    aput-object v4, v11, v12

    const/4 v0, 0x3

    new-instance v4, Lcom/android/gallery3d/app/GalleryActionBar$ActionItem;

    const/16 v5, 0x20

    const v8, 0x7f0d01a0

    const v9, 0x7f0d015d

    move v6, v1

    move v7, v3

    invoke-direct/range {v4 .. v9}, Lcom/android/gallery3d/app/GalleryActionBar$ActionItem;-><init>(IZZII)V

    aput-object v4, v11, v0

    new-instance v4, Lcom/android/gallery3d/app/GalleryActionBar$ActionItem;

    const/16 v5, 0x8

    const v8, 0x7f0d01a1

    const v9, 0x7f0d015c

    move v6, v1

    move v7, v3

    invoke-direct/range {v4 .. v9}, Lcom/android/gallery3d/app/GalleryActionBar$ActionItem;-><init>(IZZII)V

    aput-object v4, v11, v13

    sput-object v11, Lcom/android/gallery3d/app/GalleryActionBar;->sClusterItems:[Lcom/android/gallery3d/app/GalleryActionBar$ActionItem;

    return-void
.end method

.method public constructor <init>(Lcom/android/gallery3d/app/GalleryActivity;)V
    .locals 2
    .parameter "activity"

    .prologue
    .line 135
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    new-instance v0, Lcom/android/gallery3d/app/GalleryActionBar$ClusterAdapter;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/gallery3d/app/GalleryActionBar$ClusterAdapter;-><init>(Lcom/android/gallery3d/app/GalleryActionBar;Lcom/android/gallery3d/app/GalleryActionBar$1;)V

    iput-object v0, p0, Lcom/android/gallery3d/app/GalleryActionBar;->mAdapter:Lcom/android/gallery3d/app/GalleryActionBar$ClusterAdapter;

    move-object v0, p1

    .line 136
    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/app/GalleryActionBar;->mActionBar:Landroid/app/ActionBar;

    .line 137
    invoke-interface {p1}, Lcom/android/gallery3d/app/GalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/app/GalleryActionBar;->mContext:Landroid/content/Context;

    .line 138
    iput-object p1, p0, Lcom/android/gallery3d/app/GalleryActionBar;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    .line 139
    iget-object v0, p0, Lcom/android/gallery3d/app/GalleryActionBar;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/app/GalleryActionBar;->mInflater:Landroid/view/LayoutInflater;

    .line 140
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/gallery3d/app/GalleryActionBar;->mCurrentIndex:I

    .line 141
    return-void
.end method

.method static synthetic access$100()[Lcom/android/gallery3d/app/GalleryActionBar$ActionItem;
    .locals 1

    .prologue
    .line 38
    sget-object v0, Lcom/android/gallery3d/app/GalleryActionBar;->sClusterItems:[Lcom/android/gallery3d/app/GalleryActionBar$ActionItem;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/gallery3d/app/GalleryActionBar;)Landroid/view/LayoutInflater;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/gallery3d/app/GalleryActionBar;->mInflater:Landroid/view/LayoutInflater;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/gallery3d/app/GalleryActionBar;)Lcom/android/gallery3d/app/GalleryActivity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/gallery3d/app/GalleryActionBar;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    return-object v0
.end method

.method private createDialogData()V
    .locals 7

    .prologue
    .line 144
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 145
    .local v4, titles:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/android/gallery3d/app/GalleryActionBar;->mActions:Ljava/util/ArrayList;

    .line 146
    sget-object v0, Lcom/android/gallery3d/app/GalleryActionBar;->sClusterItems:[Lcom/android/gallery3d/app/GalleryActionBar$ActionItem;

    .local v0, arr$:[Lcom/android/gallery3d/app/GalleryActionBar$ActionItem;
    array-length v3, v0

    .local v3, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v2, v0, v1

    .line 147
    .local v2, item:Lcom/android/gallery3d/app/GalleryActionBar$ActionItem;
    iget-boolean v5, v2, Lcom/android/gallery3d/app/GalleryActionBar$ActionItem;->enabled:Z

    if-eqz v5, :cond_0

    iget-boolean v5, v2, Lcom/android/gallery3d/app/GalleryActionBar$ActionItem;->visible:Z

    if-eqz v5, :cond_0

    .line 148
    iget-object v5, p0, Lcom/android/gallery3d/app/GalleryActionBar;->mContext:Landroid/content/Context;

    iget v6, v2, Lcom/android/gallery3d/app/GalleryActionBar$ActionItem;->dialogTitle:I

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 149
    iget-object v5, p0, Lcom/android/gallery3d/app/GalleryActionBar;->mActions:Ljava/util/ArrayList;

    iget v6, v2, Lcom/android/gallery3d/app/GalleryActionBar$ActionItem;->action:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 146
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 152
    .end local v2           #item:Lcom/android/gallery3d/app/GalleryActionBar$ActionItem;
    :cond_1
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    new-array v5, v5, [Ljava/lang/CharSequence;

    iput-object v5, p0, Lcom/android/gallery3d/app/GalleryActionBar;->mTitles:[Ljava/lang/CharSequence;

    .line 153
    iget-object v5, p0, Lcom/android/gallery3d/app/GalleryActionBar;->mTitles:[Ljava/lang/CharSequence;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 154
    return-void
.end method

.method public static getClusterByTypeString(Landroid/content/Context;I)Ljava/lang/String;
    .locals 5
    .parameter "context"
    .parameter "type"

    .prologue
    .line 118
    sget-object v0, Lcom/android/gallery3d/app/GalleryActionBar;->sClusterItems:[Lcom/android/gallery3d/app/GalleryActionBar$ActionItem;

    .local v0, arr$:[Lcom/android/gallery3d/app/GalleryActionBar$ActionItem;
    array-length v3, v0

    .local v3, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v2, v0, v1

    .line 119
    .local v2, item:Lcom/android/gallery3d/app/GalleryActionBar$ActionItem;
    iget v4, v2, Lcom/android/gallery3d/app/GalleryActionBar$ActionItem;->action:I

    if-ne v4, p1, :cond_0

    .line 120
    iget v4, v2, Lcom/android/gallery3d/app/GalleryActionBar$ActionItem;->clusterBy:I

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 123
    .end local v2           #item:Lcom/android/gallery3d/app/GalleryActionBar$ActionItem;
    :goto_1
    return-object v4

    .line 118
    .restart local v2       #item:Lcom/android/gallery3d/app/GalleryActionBar$ActionItem;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 123
    .end local v2           #item:Lcom/android/gallery3d/app/GalleryActionBar$ActionItem;
    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method

.method public static initializeShareActionProvider(Landroid/view/Menu;)Landroid/widget/ShareActionProvider;
    .locals 3
    .parameter "menu"

    .prologue
    .line 127
    const v2, 0x7f0c009a

    invoke-interface {p0, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 128
    .local v0, item:Landroid/view/MenuItem;
    const/4 v1, 0x0

    .line 129
    .local v1, shareActionProvider:Landroid/widget/ShareActionProvider;
    if-eqz v0, :cond_0

    .line 130
    invoke-interface {v0}, Landroid/view/MenuItem;->getActionProvider()Landroid/view/ActionProvider;

    move-result-object v1

    .end local v1           #shareActionProvider:Landroid/widget/ShareActionProvider;
    check-cast v1, Landroid/widget/ShareActionProvider;

    .line 132
    .restart local v1       #shareActionProvider:Landroid/widget/ShareActionProvider;
    :cond_0
    return-object v1
.end method


# virtual methods
.method public addOnMenuVisibilityListener(Landroid/app/ActionBar$OnMenuVisibilityListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 254
    iget-object v0, p0, Lcom/android/gallery3d/app/GalleryActionBar;->mActionBar:Landroid/app/ActionBar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/gallery3d/app/GalleryActionBar;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v0, p1}, Landroid/app/ActionBar;->addOnMenuVisibilityListener(Landroid/app/ActionBar$OnMenuVisibilityListener;)V

    .line 255
    :cond_0
    return-void
.end method

.method public disableClusterMenu(Z)V
    .locals 2
    .parameter "hideMenu"

    .prologue
    .line 197
    iget-object v0, p0, Lcom/android/gallery3d/app/GalleryActionBar;->mActionBar:Landroid/app/ActionBar;

    if-eqz v0, :cond_0

    .line 198
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/gallery3d/app/GalleryActionBar;->mClusterRunner:Lcom/android/gallery3d/app/GalleryActionBar$ClusterRunner;

    .line 199
    if-eqz p1, :cond_0

    .line 200
    iget-object v0, p0, Lcom/android/gallery3d/app/GalleryActionBar;->mActionBar:Landroid/app/ActionBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setNavigationMode(I)V

    .line 203
    :cond_0
    return-void
.end method

.method public enableClusterMenu(ILcom/android/gallery3d/app/GalleryActionBar$ClusterRunner;)V
    .locals 2
    .parameter "action"
    .parameter "runner"

    .prologue
    .line 183
    iget-object v0, p0, Lcom/android/gallery3d/app/GalleryActionBar;->mActionBar:Landroid/app/ActionBar;

    if-eqz v0, :cond_0

    .line 185
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/gallery3d/app/GalleryActionBar;->mClusterRunner:Lcom/android/gallery3d/app/GalleryActionBar$ClusterRunner;

    .line 186
    iget-object v0, p0, Lcom/android/gallery3d/app/GalleryActionBar;->mActionBar:Landroid/app/ActionBar;

    iget-object v1, p0, Lcom/android/gallery3d/app/GalleryActionBar;->mAdapter:Lcom/android/gallery3d/app/GalleryActionBar$ClusterAdapter;

    invoke-virtual {v0, v1, p0}, Landroid/app/ActionBar;->setListNavigationCallbacks(Landroid/widget/SpinnerAdapter;Landroid/app/ActionBar$OnNavigationListener;)V

    .line 187
    iget-object v0, p0, Lcom/android/gallery3d/app/GalleryActionBar;->mActionBar:Landroid/app/ActionBar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setNavigationMode(I)V

    .line 188
    invoke-virtual {p0, p1}, Lcom/android/gallery3d/app/GalleryActionBar;->setSelectedAction(I)Z

    .line 189
    iput-object p2, p0, Lcom/android/gallery3d/app/GalleryActionBar;->mClusterRunner:Lcom/android/gallery3d/app/GalleryActionBar$ClusterRunner;

    .line 191
    :cond_0
    return-void
.end method

.method public getClusterTypeAction()I
    .locals 2

    .prologue
    .line 179
    sget-object v0, Lcom/android/gallery3d/app/GalleryActionBar;->sClusterItems:[Lcom/android/gallery3d/app/GalleryActionBar$ActionItem;

    iget v1, p0, Lcom/android/gallery3d/app/GalleryActionBar;->mCurrentIndex:I

    aget-object v0, v0, v1

    iget v0, v0, Lcom/android/gallery3d/app/GalleryActionBar$ActionItem;->action:I

    return v0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 157
    iget-object v0, p0, Lcom/android/gallery3d/app/GalleryActionBar;->mActionBar:Landroid/app/ActionBar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/gallery3d/app/GalleryActionBar;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v0}, Landroid/app/ActionBar;->getHeight()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hide()V
    .locals 1

    .prologue
    .line 250
    iget-object v0, p0, Lcom/android/gallery3d/app/GalleryActionBar;->mActionBar:Landroid/app/ActionBar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/gallery3d/app/GalleryActionBar;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v0}, Landroid/app/ActionBar;->hide()V

    .line 251
    :cond_0
    return-void
.end method

.method public onNavigationItemSelected(IJ)Z
    .locals 2
    .parameter "itemPosition"
    .parameter "itemId"

    .prologue
    .line 277
    iget v0, p0, Lcom/android/gallery3d/app/GalleryActionBar;->mCurrentIndex:I

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lcom/android/gallery3d/app/GalleryActionBar;->mClusterRunner:Lcom/android/gallery3d/app/GalleryActionBar$ClusterRunner;

    if-eqz v0, :cond_0

    .line 280
    iget-object v0, p0, Lcom/android/gallery3d/app/GalleryActionBar;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    invoke-interface {v0}, Lcom/android/gallery3d/app/GalleryActivity;->getGLRoot()Lcom/android/gallery3d/ui/GLRoot;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/gallery3d/ui/GLRoot;->lockRenderThread()V

    .line 282
    :try_start_0
    iget-object v0, p0, Lcom/android/gallery3d/app/GalleryActionBar;->mClusterRunner:Lcom/android/gallery3d/app/GalleryActionBar$ClusterRunner;

    sget-object v1, Lcom/android/gallery3d/app/GalleryActionBar;->sClusterItems:[Lcom/android/gallery3d/app/GalleryActionBar$ActionItem;

    aget-object v1, v1, p1

    iget v1, v1, Lcom/android/gallery3d/app/GalleryActionBar$ActionItem;->action:I

    invoke-interface {v0, v1}, Lcom/android/gallery3d/app/GalleryActionBar$ClusterRunner;->doCluster(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 284
    iget-object v0, p0, Lcom/android/gallery3d/app/GalleryActionBar;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    invoke-interface {v0}, Lcom/android/gallery3d/app/GalleryActivity;->getGLRoot()Lcom/android/gallery3d/ui/GLRoot;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/gallery3d/ui/GLRoot;->unlockRenderThread()V

    .line 287
    :cond_0
    const/4 v0, 0x0

    return v0

    .line 284
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/android/gallery3d/app/GalleryActionBar;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    invoke-interface {v1}, Lcom/android/gallery3d/app/GalleryActivity;->getGLRoot()Lcom/android/gallery3d/ui/GLRoot;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/gallery3d/ui/GLRoot;->unlockRenderThread()V

    throw v0
.end method

.method public removeOnMenuVisibilityListener(Landroid/app/ActionBar$OnMenuVisibilityListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 258
    iget-object v0, p0, Lcom/android/gallery3d/app/GalleryActionBar;->mActionBar:Landroid/app/ActionBar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/gallery3d/app/GalleryActionBar;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v0, p1}, Landroid/app/ActionBar;->removeOnMenuVisibilityListener(Landroid/app/ActionBar$OnMenuVisibilityListener;)V

    .line 259
    :cond_0
    return-void
.end method

.method public setClusterItemEnabled(IZ)V
    .locals 5
    .parameter "id"
    .parameter "enabled"

    .prologue
    .line 161
    sget-object v0, Lcom/android/gallery3d/app/GalleryActionBar;->sClusterItems:[Lcom/android/gallery3d/app/GalleryActionBar$ActionItem;

    .local v0, arr$:[Lcom/android/gallery3d/app/GalleryActionBar$ActionItem;
    array-length v3, v0

    .local v3, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v2, v0, v1

    .line 162
    .local v2, item:Lcom/android/gallery3d/app/GalleryActionBar$ActionItem;
    iget v4, v2, Lcom/android/gallery3d/app/GalleryActionBar$ActionItem;->action:I

    if-ne v4, p1, :cond_1

    .line 163
    iput-boolean p2, v2, Lcom/android/gallery3d/app/GalleryActionBar$ActionItem;->enabled:Z

    .line 167
    .end local v2           #item:Lcom/android/gallery3d/app/GalleryActionBar$ActionItem;
    :cond_0
    return-void

    .line 161
    .restart local v2       #item:Lcom/android/gallery3d/app/GalleryActionBar$ActionItem;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public setClusterItemVisibility(IZ)V
    .locals 5
    .parameter "id"
    .parameter "visible"

    .prologue
    .line 170
    sget-object v0, Lcom/android/gallery3d/app/GalleryActionBar;->sClusterItems:[Lcom/android/gallery3d/app/GalleryActionBar$ActionItem;

    .local v0, arr$:[Lcom/android/gallery3d/app/GalleryActionBar$ActionItem;
    array-length v3, v0

    .local v3, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v2, v0, v1

    .line 171
    .local v2, item:Lcom/android/gallery3d/app/GalleryActionBar$ActionItem;
    iget v4, v2, Lcom/android/gallery3d/app/GalleryActionBar$ActionItem;->action:I

    if-ne v4, p1, :cond_1

    .line 172
    iput-boolean p2, v2, Lcom/android/gallery3d/app/GalleryActionBar$ActionItem;->visible:Z

    .line 176
    .end local v2           #item:Lcom/android/gallery3d/app/GalleryActionBar$ActionItem;
    :cond_0
    return-void

    .line 170
    .restart local v2       #item:Lcom/android/gallery3d/app/GalleryActionBar$ActionItem;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public setDisplayOptions(ZZ)V
    .locals 3
    .parameter "displayHomeAsUp"
    .parameter "showTitle"

    .prologue
    const/4 v1, 0x0

    .line 224
    iget-object v2, p0, Lcom/android/gallery3d/app/GalleryActionBar;->mActionBar:Landroid/app/ActionBar;

    if-eqz v2, :cond_1

    .line 225
    if-eqz p1, :cond_2

    const/4 v2, 0x4

    :goto_0
    if-eqz p2, :cond_0

    const/16 v1, 0x8

    :cond_0
    or-int v0, v2, v1

    .line 227
    .local v0, options:I
    iget-object v1, p0, Lcom/android/gallery3d/app/GalleryActionBar;->mActionBar:Landroid/app/ActionBar;

    const/16 v2, 0xc

    invoke-virtual {v1, v0, v2}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 229
    iget-object v1, p0, Lcom/android/gallery3d/app/GalleryActionBar;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v1, p1}, Landroid/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 231
    .end local v0           #options:I
    :cond_1
    return-void

    :cond_2
    move v2, v1

    .line 225
    goto :goto_0
.end method

.method public setSelectedAction(I)Z
    .locals 5
    .parameter "type"

    .prologue
    const/4 v3, 0x0

    .line 262
    iget-object v4, p0, Lcom/android/gallery3d/app/GalleryActionBar;->mActionBar:Landroid/app/ActionBar;

    if-nez v4, :cond_1

    .line 272
    :cond_0
    :goto_0
    return v3

    .line 264
    :cond_1
    const/4 v0, 0x0

    .local v0, i:I
    sget-object v4, Lcom/android/gallery3d/app/GalleryActionBar;->sClusterItems:[Lcom/android/gallery3d/app/GalleryActionBar$ActionItem;

    array-length v2, v4

    .local v2, n:I
    :goto_1
    if-ge v0, v2, :cond_0

    .line 265
    sget-object v4, Lcom/android/gallery3d/app/GalleryActionBar;->sClusterItems:[Lcom/android/gallery3d/app/GalleryActionBar$ActionItem;

    aget-object v1, v4, v0

    .line 266
    .local v1, item:Lcom/android/gallery3d/app/GalleryActionBar$ActionItem;
    iget v4, v1, Lcom/android/gallery3d/app/GalleryActionBar$ActionItem;->action:I

    if-ne v4, p1, :cond_2

    .line 267
    iget-object v3, p0, Lcom/android/gallery3d/app/GalleryActionBar;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v3, v0}, Landroid/app/ActionBar;->setSelectedNavigationItem(I)V

    .line 268
    iput v0, p0, Lcom/android/gallery3d/app/GalleryActionBar;->mCurrentIndex:I

    .line 269
    const/4 v3, 0x1

    goto :goto_0

    .line 264
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public setSubtitle(Ljava/lang/String;)V
    .locals 1
    .parameter "title"

    .prologue
    .line 242
    iget-object v0, p0, Lcom/android/gallery3d/app/GalleryActionBar;->mActionBar:Landroid/app/ActionBar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/gallery3d/app/GalleryActionBar;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v0, p1}, Landroid/app/ActionBar;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 243
    :cond_0
    return-void
.end method

.method public setTitle(I)V
    .locals 1
    .parameter "titleId"

    .prologue
    .line 238
    iget-object v0, p0, Lcom/android/gallery3d/app/GalleryActionBar;->mActionBar:Landroid/app/ActionBar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/gallery3d/app/GalleryActionBar;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v0, p1}, Landroid/app/ActionBar;->setTitle(I)V

    .line 239
    :cond_0
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 1
    .parameter "title"

    .prologue
    .line 234
    iget-object v0, p0, Lcom/android/gallery3d/app/GalleryActionBar;->mActionBar:Landroid/app/ActionBar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/gallery3d/app/GalleryActionBar;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v0, p1}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 235
    :cond_0
    return-void
.end method

.method public show()V
    .locals 1

    .prologue
    .line 246
    iget-object v0, p0, Lcom/android/gallery3d/app/GalleryActionBar;->mActionBar:Landroid/app/ActionBar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/gallery3d/app/GalleryActionBar;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v0}, Landroid/app/ActionBar;->show()V

    .line 247
    :cond_0
    return-void
.end method

.method public showClusterDialog(Lcom/android/gallery3d/app/GalleryActionBar$ClusterRunner;)V
    .locals 4
    .parameter "clusterRunner"

    .prologue
    .line 206
    invoke-direct {p0}, Lcom/android/gallery3d/app/GalleryActionBar;->createDialogData()V

    .line 207
    iget-object v0, p0, Lcom/android/gallery3d/app/GalleryActionBar;->mActions:Ljava/util/ArrayList;

    .line 208
    .local v0, actions:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/android/gallery3d/app/GalleryActionBar;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0d01a2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/gallery3d/app/GalleryActionBar;->mTitles:[Ljava/lang/CharSequence;

    new-instance v3, Lcom/android/gallery3d/app/GalleryActionBar$1;

    invoke-direct {v3, p0, p1, v0}, Lcom/android/gallery3d/app/GalleryActionBar$1;-><init>(Lcom/android/gallery3d/app/GalleryActionBar;Lcom/android/gallery3d/app/GalleryActionBar$ClusterRunner;Ljava/util/ArrayList;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 221
    return-void
.end method
