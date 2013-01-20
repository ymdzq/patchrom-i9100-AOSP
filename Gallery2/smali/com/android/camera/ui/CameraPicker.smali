.class public Lcom/android/camera/ui/CameraPicker;
.super Lcom/android/camera/ui/RotateImageView;
.source "CameraPicker.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static mImageResource:I


# instance fields
.field private mListener:Lcom/android/camera/CameraPreference$OnPreferenceChangedListener;

.field private mPreference:Lcom/android/camera/ListPreference;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/android/camera/ui/RotateImageView;-><init>(Landroid/content/Context;)V

    .line 38
    sget v0, Lcom/android/camera/ui/CameraPicker;->mImageResource:I

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/CameraPicker;->setImageResource(I)V

    .line 39
    invoke-virtual {p0}, Lcom/android/camera/ui/CameraPicker;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d00b9

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/CameraPicker;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 41
    const v0, 0x7f0c0002

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/CameraPicker;->setId(I)V

    .line 42
    return-void
.end method

.method public static setImageResourceId(I)V
    .locals 0
    .parameter "imageResource"

    .prologue
    .line 45
    sput p0, Lcom/android/camera/ui/CameraPicker;->mImageResource:I

    .line 46
    return-void
.end method


# virtual methods
.method public initialize(Lcom/android/camera/ListPreference;)V
    .locals 1
    .parameter "pref"

    .prologue
    .line 53
    iput-object p1, p0, Lcom/android/camera/ui/CameraPicker;->mPreference:Lcom/android/camera/ListPreference;

    .line 54
    invoke-virtual {p0, p0}, Lcom/android/camera/ui/CameraPicker;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 55
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/CameraPicker;->setVisibility(I)V

    .line 56
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter "v"

    .prologue
    .line 65
    iget-object v3, p0, Lcom/android/camera/ui/CameraPicker;->mPreference:Lcom/android/camera/ListPreference;

    iget-object v4, p0, Lcom/android/camera/ui/CameraPicker;->mPreference:Lcom/android/camera/ListPreference;

    invoke-virtual {v4}, Lcom/android/camera/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/camera/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v0

    .line 66
    .local v0, index:I
    iget-object v3, p0, Lcom/android/camera/ui/CameraPicker;->mPreference:Lcom/android/camera/ListPreference;

    invoke-virtual {v3}, Lcom/android/camera/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v2

    .line 67
    .local v2, values:[Ljava/lang/CharSequence;
    add-int/lit8 v3, v0, 0x1

    array-length v4, v2

    rem-int v0, v3, v4

    .line 68
    aget-object v3, v2, v0

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 69
    .local v1, newCameraId:I
    iget-object v3, p0, Lcom/android/camera/ui/CameraPicker;->mListener:Lcom/android/camera/CameraPreference$OnPreferenceChangedListener;

    invoke-interface {v3, v1}, Lcom/android/camera/CameraPreference$OnPreferenceChangedListener;->onCameraPickerClicked(I)V

    .line 70
    return-void
.end method

.method public setCameraId(I)V
    .locals 3
    .parameter "cameraId"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/camera/ui/CameraPicker;->mPreference:Lcom/android/camera/ListPreference;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/ListPreference;->setValue(Ljava/lang/String;)V

    .line 60
    return-void
.end method

.method public setListener(Lcom/android/camera/CameraPreference$OnPreferenceChangedListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 49
    iput-object p1, p0, Lcom/android/camera/ui/CameraPicker;->mListener:Lcom/android/camera/CameraPreference$OnPreferenceChangedListener;

    .line 50
    return-void
.end method
