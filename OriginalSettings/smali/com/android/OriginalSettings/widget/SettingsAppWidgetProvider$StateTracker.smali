.class abstract Lcom/android/OriginalSettings/widget/SettingsAppWidgetProvider$StateTracker;
.super Ljava/lang/Object;
.source "SettingsAppWidgetProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/OriginalSettings/widget/SettingsAppWidgetProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "StateTracker"
.end annotation


# instance fields
.field private mActualState:Ljava/lang/Boolean;

.field private mDeferredStateChangeRequestNeeded:Z

.field private mInTransition:Z

.field private mIntendedState:Ljava/lang/Boolean;


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 124
    iput-boolean v0, p0, Lcom/android/OriginalSettings/widget/SettingsAppWidgetProvider$StateTracker;->mInTransition:Z

    .line 125
    iput-object v1, p0, Lcom/android/OriginalSettings/widget/SettingsAppWidgetProvider$StateTracker;->mActualState:Ljava/lang/Boolean;

    .line 126
    iput-object v1, p0, Lcom/android/OriginalSettings/widget/SettingsAppWidgetProvider$StateTracker;->mIntendedState:Ljava/lang/Boolean;

    .line 132
    iput-boolean v0, p0, Lcom/android/OriginalSettings/widget/SettingsAppWidgetProvider$StateTracker;->mDeferredStateChangeRequestNeeded:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/OriginalSettings/widget/SettingsAppWidgetProvider$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 122
    invoke-direct {p0}, Lcom/android/OriginalSettings/widget/SettingsAppWidgetProvider$StateTracker;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract getActualState(Landroid/content/Context;)I
.end method

.method public abstract getButtonId()I
.end method

.method public abstract getButtonImageId(Z)I
.end method

.method public abstract getIndicatorId()I
.end method

.method public getPosition()I
    .locals 1

    .prologue
    .line 187
    const/4 v0, 0x1

    return v0
.end method

.method public final getTriState(Landroid/content/Context;)I
    .locals 2
    .parameter "context"

    .prologue
    const/4 v0, 0x5

    .line 290
    iget-boolean v1, p0, Lcom/android/OriginalSettings/widget/SettingsAppWidgetProvider$StateTracker;->mInTransition:Z

    if-eqz v1, :cond_0

    .line 306
    :goto_0
    return v0

    .line 300
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/OriginalSettings/widget/SettingsAppWidgetProvider$StateTracker;->getActualState(Landroid/content/Context;)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 302
    :pswitch_0
    const/4 v0, 0x0

    goto :goto_0

    .line 304
    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    .line 300
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final isTurningOn()Z
    .locals 1

    .prologue
    .line 280
    iget-object v0, p0, Lcom/android/OriginalSettings/widget/SettingsAppWidgetProvider$StateTracker;->mIntendedState:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/OriginalSettings/widget/SettingsAppWidgetProvider$StateTracker;->mIntendedState:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public abstract onActualStateChange(Landroid/content/Context;Landroid/content/Intent;)V
.end method

.method protected abstract requestStateChange(Landroid/content/Context;Z)V
.end method

.method protected final setCurrentState(Landroid/content/Context;I)V
    .locals 5
    .parameter "context"
    .parameter "newState"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 239
    iget-boolean v0, p0, Lcom/android/OriginalSettings/widget/SettingsAppWidgetProvider$StateTracker;->mInTransition:Z

    .line 240
    .local v0, wasInTransition:Z
    packed-switch p2, :pswitch_data_0

    .line 259
    :goto_0
    if-eqz v0, :cond_1

    iget-boolean v1, p0, Lcom/android/OriginalSettings/widget/SettingsAppWidgetProvider$StateTracker;->mInTransition:Z

    if-nez v1, :cond_1

    .line 260
    iget-boolean v1, p0, Lcom/android/OriginalSettings/widget/SettingsAppWidgetProvider$StateTracker;->mDeferredStateChangeRequestNeeded:Z

    if-eqz v1, :cond_1

    .line 261
    const-string v1, "SettingsAppWidgetProvider"

    const-string v2, "processing deferred state change"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    iget-object v1, p0, Lcom/android/OriginalSettings/widget/SettingsAppWidgetProvider$StateTracker;->mActualState:Ljava/lang/Boolean;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/OriginalSettings/widget/SettingsAppWidgetProvider$StateTracker;->mIntendedState:Ljava/lang/Boolean;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/OriginalSettings/widget/SettingsAppWidgetProvider$StateTracker;->mIntendedState:Ljava/lang/Boolean;

    iget-object v2, p0, Lcom/android/OriginalSettings/widget/SettingsAppWidgetProvider$StateTracker;->mActualState:Ljava/lang/Boolean;

    invoke-virtual {v1, v2}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 264
    const-string v1, "SettingsAppWidgetProvider"

    const-string v2, "... but intended state matches, so no changes."

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    :cond_0
    :goto_1
    iput-boolean v3, p0, Lcom/android/OriginalSettings/widget/SettingsAppWidgetProvider$StateTracker;->mDeferredStateChangeRequestNeeded:Z

    .line 272
    :cond_1
    return-void

    .line 242
    :pswitch_0
    iput-boolean v3, p0, Lcom/android/OriginalSettings/widget/SettingsAppWidgetProvider$StateTracker;->mInTransition:Z

    .line 243
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/android/OriginalSettings/widget/SettingsAppWidgetProvider$StateTracker;->mActualState:Ljava/lang/Boolean;

    goto :goto_0

    .line 246
    :pswitch_1
    iput-boolean v3, p0, Lcom/android/OriginalSettings/widget/SettingsAppWidgetProvider$StateTracker;->mInTransition:Z

    .line 247
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/android/OriginalSettings/widget/SettingsAppWidgetProvider$StateTracker;->mActualState:Ljava/lang/Boolean;

    goto :goto_0

    .line 250
    :pswitch_2
    iput-boolean v4, p0, Lcom/android/OriginalSettings/widget/SettingsAppWidgetProvider$StateTracker;->mInTransition:Z

    .line 251
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/android/OriginalSettings/widget/SettingsAppWidgetProvider$StateTracker;->mActualState:Ljava/lang/Boolean;

    goto :goto_0

    .line 254
    :pswitch_3
    iput-boolean v4, p0, Lcom/android/OriginalSettings/widget/SettingsAppWidgetProvider$StateTracker;->mInTransition:Z

    .line 255
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/android/OriginalSettings/widget/SettingsAppWidgetProvider$StateTracker;->mActualState:Ljava/lang/Boolean;

    goto :goto_0

    .line 265
    :cond_2
    iget-object v1, p0, Lcom/android/OriginalSettings/widget/SettingsAppWidgetProvider$StateTracker;->mIntendedState:Ljava/lang/Boolean;

    if-eqz v1, :cond_0

    .line 266
    iput-boolean v4, p0, Lcom/android/OriginalSettings/widget/SettingsAppWidgetProvider$StateTracker;->mInTransition:Z

    .line 267
    iget-object v1, p0, Lcom/android/OriginalSettings/widget/SettingsAppWidgetProvider$StateTracker;->mIntendedState:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p0, p1, v1}, Lcom/android/OriginalSettings/widget/SettingsAppWidgetProvider$StateTracker;->requestStateChange(Landroid/content/Context;Z)V

    goto :goto_1

    .line 240
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public final setImageViewResources(Landroid/content/Context;Landroid/widget/RemoteViews;)V
    .locals 6
    .parameter "context"
    .parameter "views"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 194
    invoke-virtual {p0}, Lcom/android/OriginalSettings/widget/SettingsAppWidgetProvider$StateTracker;->getButtonId()I

    move-result v0

    .line 195
    .local v0, buttonId:I
    invoke-virtual {p0}, Lcom/android/OriginalSettings/widget/SettingsAppWidgetProvider$StateTracker;->getIndicatorId()I

    move-result v1

    .line 196
    .local v1, indicatorId:I
    invoke-virtual {p0}, Lcom/android/OriginalSettings/widget/SettingsAppWidgetProvider$StateTracker;->getPosition()I

    move-result v2

    .line 197
    .local v2, pos:I
    invoke-virtual {p0, p1}, Lcom/android/OriginalSettings/widget/SettingsAppWidgetProvider$StateTracker;->getTriState(Landroid/content/Context;)I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 225
    :goto_0
    :pswitch_0
    return-void

    .line 199
    :pswitch_1
    invoke-virtual {p0, v4}, Lcom/android/OriginalSettings/widget/SettingsAppWidgetProvider$StateTracker;->getButtonImageId(Z)I

    move-result v3

    invoke-virtual {p2, v0, v3}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 200
    invoke-static {}, Lcom/android/OriginalSettings/widget/SettingsAppWidgetProvider;->access$400()[I

    move-result-object v3

    aget v3, v3, v2

    invoke-virtual {p2, v1, v3}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    goto :goto_0

    .line 204
    :pswitch_2
    invoke-virtual {p0, v5}, Lcom/android/OriginalSettings/widget/SettingsAppWidgetProvider$StateTracker;->getButtonImageId(Z)I

    move-result v3

    invoke-virtual {p2, v0, v3}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 205
    invoke-static {}, Lcom/android/OriginalSettings/widget/SettingsAppWidgetProvider;->access$500()[I

    move-result-object v3

    aget v3, v3, v2

    invoke-virtual {p2, v1, v3}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    goto :goto_0

    .line 214
    :pswitch_3
    invoke-virtual {p0}, Lcom/android/OriginalSettings/widget/SettingsAppWidgetProvider$StateTracker;->isTurningOn()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 215
    invoke-virtual {p0, v5}, Lcom/android/OriginalSettings/widget/SettingsAppWidgetProvider$StateTracker;->getButtonImageId(Z)I

    move-result v3

    invoke-virtual {p2, v0, v3}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 216
    invoke-static {}, Lcom/android/OriginalSettings/widget/SettingsAppWidgetProvider;->access$600()[I

    move-result-object v3

    aget v3, v3, v2

    invoke-virtual {p2, v1, v3}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    goto :goto_0

    .line 219
    :cond_0
    invoke-virtual {p0, v4}, Lcom/android/OriginalSettings/widget/SettingsAppWidgetProvider$StateTracker;->getButtonImageId(Z)I

    move-result v3

    invoke-virtual {p2, v0, v3}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 220
    invoke-static {}, Lcom/android/OriginalSettings/widget/SettingsAppWidgetProvider;->access$400()[I

    move-result-object v3

    aget v3, v3, v2

    invoke-virtual {p2, v1, v3}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    goto :goto_0

    .line 197
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public final toggleState(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    const/4 v2, 0x1

    .line 140
    invoke-virtual {p0, p1}, Lcom/android/OriginalSettings/widget/SettingsAppWidgetProvider$StateTracker;->getTriState(Landroid/content/Context;)I

    move-result v0

    .line 141
    .local v0, currentState:I
    const/4 v1, 0x0

    .line 142
    .local v1, newState:Z
    packed-switch v0, :pswitch_data_0

    .line 155
    :cond_0
    :goto_0
    :pswitch_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iput-object v3, p0, Lcom/android/OriginalSettings/widget/SettingsAppWidgetProvider$StateTracker;->mIntendedState:Ljava/lang/Boolean;

    .line 156
    iget-boolean v3, p0, Lcom/android/OriginalSettings/widget/SettingsAppWidgetProvider$StateTracker;->mInTransition:Z

    if-eqz v3, :cond_2

    .line 161
    iput-boolean v2, p0, Lcom/android/OriginalSettings/widget/SettingsAppWidgetProvider$StateTracker;->mDeferredStateChangeRequestNeeded:Z

    .line 166
    :goto_1
    return-void

    .line 144
    :pswitch_1
    const/4 v1, 0x0

    .line 145
    goto :goto_0

    .line 147
    :pswitch_2
    const/4 v1, 0x1

    .line 148
    goto :goto_0

    .line 150
    :pswitch_3
    iget-object v3, p0, Lcom/android/OriginalSettings/widget/SettingsAppWidgetProvider$StateTracker;->mIntendedState:Ljava/lang/Boolean;

    if-eqz v3, :cond_0

    .line 151
    iget-object v3, p0, Lcom/android/OriginalSettings/widget/SettingsAppWidgetProvider$StateTracker;->mIntendedState:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_1

    move v1, v2

    :goto_2
    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_2

    .line 163
    :cond_2
    iput-boolean v2, p0, Lcom/android/OriginalSettings/widget/SettingsAppWidgetProvider$StateTracker;->mInTransition:Z

    .line 164
    invoke-virtual {p0, p1, v1}, Lcom/android/OriginalSettings/widget/SettingsAppWidgetProvider$StateTracker;->requestStateChange(Landroid/content/Context;Z)V

    goto :goto_1

    .line 142
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method
