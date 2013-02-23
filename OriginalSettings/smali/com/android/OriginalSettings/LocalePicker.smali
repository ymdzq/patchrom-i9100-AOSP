.class public Lcom/android/OriginalSettings/LocalePicker;
.super Lcom/android/internal/app/LocalePicker;
.source "LocalePicker.java"

# interfaces
.implements Lcom/android/internal/app/LocalePicker$LocaleSelectionListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/android/internal/app/LocalePicker;-><init>()V

    .line 25
    invoke-virtual {p0, p0}, Lcom/android/OriginalSettings/LocalePicker;->setLocaleSelectionListener(Lcom/android/internal/app/LocalePicker$LocaleSelectionListener;)V

    .line 26
    return-void
.end method


# virtual methods
.method public onLocaleSelected(Ljava/util/Locale;)V
    .locals 1
    .parameter "locale"

    .prologue
    .line 30
    invoke-virtual {p0}, Lcom/android/OriginalSettings/LocalePicker;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->onBackPressed()V

    .line 31
    invoke-static {p1}, Lcom/android/OriginalSettings/LocalePicker;->updateLocale(Ljava/util/Locale;)V

    .line 32
    return-void
.end method
