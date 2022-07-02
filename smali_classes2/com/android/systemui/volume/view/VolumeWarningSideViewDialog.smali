.class public Lcom/android/systemui/volume/view/VolumeWarningSideViewDialog;
.super Landroid/app/Dialog;
.source "VolumeWarningSideViewDialog.java"

# interfaces
.implements Lcom/samsung/systemui/splugins/volume/VolumeObservable;
.implements Lcom/samsung/systemui/splugins/volume/VolumeObserver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/volume/view/VolumeWarningSideViewDialog$WarningDialogType;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/app/Dialog;",
        "Lcom/samsung/systemui/splugins/volume/VolumeObservable<",
        "Lcom/samsung/systemui/splugins/volume/VolumePanelAction;",
        ">;",
        "Lcom/samsung/systemui/splugins/volume/VolumeObserver<",
        "Lcom/samsung/systemui/splugins/volume/VolumePanelState;",
        ">;"
    }
.end annotation


# instance fields
.field private mActionObserverUnsubscriber:Lcom/samsung/systemui/splugins/volume/VolumeDisposable;

.field private final mContext:Landroid/content/Context;

.field private final mDialogType:Lcom/android/systemui/volume/view/VolumeWarningSideViewDialog$WarningDialogType;

.field private mHandlerWrapper:Lcom/android/systemui/volume/util/HandlerWrapper;

.field private mObservers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/samsung/systemui/splugins/volume/VolumeObserver;",
            ">;"
        }
    .end annotation
.end field

.field private mStateObserverUnsubscriber:Lcom/samsung/systemui/splugins/volume/VolumeDisposable;

.field private mStore:Lcom/android/systemui/volume/store/VolumePanelStore;


# direct methods
.method public static synthetic $r8$lambda$3J2tsDplVdaoeiQSsfwBWkUB6lk(Lcom/android/systemui/volume/view/VolumeWarningSideViewDialog;Lcom/samsung/systemui/splugins/volume/VolumePanelAction;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/volume/view/VolumeWarningSideViewDialog;->lambda$dispatch$0(Lcom/samsung/systemui/splugins/volume/VolumePanelAction;)V

    return-void
.end method

.method public static synthetic $r8$lambda$DXgqbwN1bhyKiVmepajhrDhFvzU(Lcom/android/systemui/volume/view/VolumeWarningSideViewDialog;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/volume/view/VolumeWarningSideViewDialog;->lambda$setClickListener$2(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$bQ1ykOMDAzrigqfGMoge-TvsGCI(Lcom/android/systemui/volume/view/VolumeWarningSideViewDialog;ZILandroid/view/ViewGroup;IFII)V
    .locals 0

    invoke-direct/range {p0 .. p7}, Lcom/android/systemui/volume/view/VolumeWarningSideViewDialog;->lambda$adjustLayout$1(ZILandroid/view/ViewGroup;IFII)V

    return-void
.end method

.method public static synthetic $r8$lambda$zKllCcdX3xzrTUOu8hXs8NZqryA(Lcom/android/systemui/volume/view/VolumeWarningSideViewDialog;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/volume/view/VolumeWarningSideViewDialog;->lambda$setClickListener$3(Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/volume/view/VolumeWarningSideViewDialog$WarningDialogType;)V
    .locals 1

    .line 55
    sget v0, Lcom/android/systemui/R$style;->Theme_SystemUI_Dialog_VolumeWarningDialog:I

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 42
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/volume/view/VolumeWarningSideViewDialog;->mObservers:Ljava/util/ArrayList;

    .line 56
    iput-object p1, p0, Lcom/android/systemui/volume/view/VolumeWarningSideViewDialog;->mContext:Landroid/content/Context;

    .line 57
    iput-object p2, p0, Lcom/android/systemui/volume/view/VolumeWarningSideViewDialog;->mDialogType:Lcom/android/systemui/volume/view/VolumeWarningSideViewDialog$WarningDialogType;

    .line 58
    invoke-direct {p0}, Lcom/android/systemui/volume/view/VolumeWarningSideViewDialog;->initDialog()V

    return-void
.end method

.method private adjustLayout()V
    .locals 13

    .line 185
    iget-object v0, p0, Lcom/android/systemui/volume/view/VolumeWarningSideViewDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 186
    iget-object v1, p0, Lcom/android/systemui/volume/view/VolumeWarningSideViewDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    move v6, v3

    goto :goto_0

    :cond_0
    move v6, v2

    :goto_0
    if-eqz v6, :cond_1

    .line 187
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    goto :goto_1

    :cond_1
    iget v1, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    :goto_1
    move v9, v1

    int-to-float v1, v9

    const/high16 v3, 0x43b40000    # 360.0f

    div-float/2addr v1, v3

    const/high16 v3, 0x43200000    # 160.0f

    mul-float/2addr v1, v3

    .line 190
    iget v0, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    int-to-float v0, v0

    div-float v10, v1, v0

    .line 192
    sget v0, Lcom/android/systemui/R$id;->volume_warning_side_view_contents:I

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 193
    invoke-virtual {v0, v10}, Landroid/view/ViewGroup;->setScaleX(F)V

    .line 194
    invoke-virtual {v0, v10}, Landroid/view/ViewGroup;->setScaleY(F)V

    .line 196
    iget-object v1, p0, Lcom/android/systemui/volume/view/VolumeWarningSideViewDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Lcom/android/systemui/R$dimen;->volume_warning_side_view_padding_bottom:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v12

    .line 197
    iget-object v1, p0, Lcom/android/systemui/volume/view/VolumeWarningSideViewDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Lcom/android/systemui/R$dimen;->volume_warning_side_view_padding_right:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v11

    .line 198
    iget-object v1, p0, Lcom/android/systemui/volume/view/VolumeWarningSideViewDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v3, "cover_text_direction"

    invoke-static {v1, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    const/4 v1, 0x0

    .line 200
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setAlpha(F)V

    .line 201
    new-instance v1, Lcom/android/systemui/volume/view/VolumeWarningSideViewDialog$$ExternalSyntheticLambda3;

    move-object v4, v1

    move-object v5, p0

    move-object v8, v0

    invoke-direct/range {v4 .. v12}, Lcom/android/systemui/volume/view/VolumeWarningSideViewDialog$$ExternalSyntheticLambda3;-><init>(Lcom/android/systemui/volume/view/VolumeWarningSideViewDialog;ZILandroid/view/ViewGroup;IFII)V

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    .line 229
    iget-object v0, p0, Lcom/android/systemui/volume/view/VolumeWarningSideViewDialog;->mDialogType:Lcom/android/systemui/volume/view/VolumeWarningSideViewDialog$WarningDialogType;

    sget-object v1, Lcom/android/systemui/volume/view/VolumeWarningSideViewDialog$WarningDialogType;->VOLUME_CSD_100_WARNING:Lcom/android/systemui/volume/view/VolumeWarningSideViewDialog$WarningDialogType;

    if-ne v0, v1, :cond_2

    .line 230
    sget v0, Lcom/android/systemui/R$id;->negative_button:I

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/Button;

    const/16 v0, 0x8

    .line 231
    invoke-virtual {p0, v0}, Landroid/widget/Button;->setVisibility(I)V

    :cond_2
    return-void
.end method

.method private initDialog()V
    .locals 0

    .line 136
    invoke-direct {p0}, Lcom/android/systemui/volume/view/VolumeWarningSideViewDialog;->prepareWindow()V

    .line 137
    invoke-direct {p0}, Lcom/android/systemui/volume/view/VolumeWarningSideViewDialog;->adjustLayout()V

    .line 138
    invoke-direct {p0}, Lcom/android/systemui/volume/view/VolumeWarningSideViewDialog;->setWarningText()V

    .line 139
    invoke-direct {p0}, Lcom/android/systemui/volume/view/VolumeWarningSideViewDialog;->setClickListener()V

    return-void
.end method

.method private synthetic lambda$adjustLayout$1(ZILandroid/view/ViewGroup;IFII)V
    .locals 2

    const/high16 v0, 0x40000000    # 2.0f

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    const/high16 p0, 0x42b40000    # 90.0f

    .line 204
    invoke-virtual {p3, p0}, Landroid/view/ViewGroup;->setRotation(F)V

    goto :goto_0

    :cond_0
    const/high16 p0, 0x43870000    # 270.0f

    .line 206
    invoke-virtual {p3, p0}, Landroid/view/ViewGroup;->setRotation(F)V

    :goto_0
    int-to-float p0, p4

    div-float/2addr p0, v0

    .line 208
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getHeight()I

    move-result p1

    int-to-float p1, p1

    div-float/2addr p1, v0

    mul-float/2addr p1, p5

    sub-float/2addr p0, p1

    int-to-float p1, p6

    mul-float/2addr p1, p5

    sub-float/2addr p0, p1

    invoke-virtual {p3, p0}, Landroid/view/ViewGroup;->setTranslationX(F)V

    int-to-float p0, p7

    mul-float/2addr p0, p5

    neg-float p0, p0

    .line 209
    invoke-virtual {p3, p0}, Landroid/view/ViewGroup;->setTranslationY(F)V

    goto :goto_1

    .line 211
    :cond_1
    iget-object p0, p0, Lcom/android/systemui/volume/view/VolumeWarningSideViewDialog;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Display;->getRotation()I

    move-result p0

    const/4 p1, 0x1

    const/high16 v1, 0x43340000    # 180.0f

    if-ne p0, p1, :cond_3

    if-eqz p2, :cond_2

    .line 214
    invoke-virtual {p3, v1}, Landroid/view/ViewGroup;->setRotation(F)V

    :cond_2
    int-to-float p0, p4

    div-float/2addr p0, v0

    .line 216
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getHeight()I

    move-result p1

    int-to-float p1, p1

    div-float/2addr p1, v0

    mul-float/2addr p1, p5

    sub-float/2addr p0, p1

    int-to-float p1, p6

    mul-float/2addr p1, p5

    sub-float/2addr p0, p1

    neg-float p0, p0

    invoke-virtual {p3, p0}, Landroid/view/ViewGroup;->setTranslationY(F)V

    int-to-float p0, p7

    mul-float/2addr p0, p5

    neg-float p0, p0

    .line 217
    invoke-virtual {p3, p0}, Landroid/view/ViewGroup;->setTranslationX(F)V

    goto :goto_1

    :cond_3
    const/4 p1, 0x3

    if-ne p0, p1, :cond_5

    if-nez p2, :cond_4

    .line 220
    invoke-virtual {p3, v1}, Landroid/view/ViewGroup;->setRotation(F)V

    :cond_4
    int-to-float p0, p4

    div-float/2addr p0, v0

    .line 222
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getHeight()I

    move-result p1

    int-to-float p1, p1

    div-float/2addr p1, v0

    mul-float/2addr p1, p5

    sub-float/2addr p0, p1

    int-to-float p1, p6

    mul-float/2addr p1, p5

    sub-float/2addr p0, p1

    invoke-virtual {p3, p0}, Landroid/view/ViewGroup;->setTranslationY(F)V

    int-to-float p0, p7

    mul-float/2addr p0, p5

    .line 223
    invoke-virtual {p3, p0}, Landroid/view/ViewGroup;->setTranslationX(F)V

    :cond_5
    :goto_1
    const/high16 p0, 0x3f800000    # 1.0f

    .line 226
    invoke-virtual {p3, p0}, Landroid/view/ViewGroup;->setAlpha(F)V

    return-void
.end method

.method private synthetic lambda$dispatch$0(Lcom/samsung/systemui/splugins/volume/VolumePanelAction;)V
    .locals 1

    .line 103
    iget-object p0, p0, Lcom/android/systemui/volume/view/VolumeWarningSideViewDialog;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/systemui/splugins/volume/VolumeObserver;

    .line 104
    invoke-interface {v0, p1}, Lcom/samsung/systemui/splugins/volume/VolumeObserver;->onChanged(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private synthetic lambda$setClickListener$2(Landroid/view/View;)V
    .locals 3

    .line 238
    iget-object p1, p0, Lcom/android/systemui/volume/view/VolumeWarningSideViewDialog;->mDialogType:Lcom/android/systemui/volume/view/VolumeWarningSideViewDialog$WarningDialogType;

    sget-object v0, Lcom/android/systemui/volume/view/VolumeWarningSideViewDialog$WarningDialogType;->DEFAULT_SAFETY_VOLUME_WARNING:Lcom/android/systemui/volume/view/VolumeWarningSideViewDialog$WarningDialogType;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne p1, v0, :cond_0

    .line 239
    new-instance p1, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;->ACTION_VOLUME_SAFETY_WARNING_DIALOG_CANCEL_CLICKED:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;

    invoke-direct {p1, v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;-><init>(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;)V

    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;->FROM_OUTSIDE:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;

    .line 240
    invoke-virtual {p1, v0, v2}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->setEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;Z)Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumePanelAction;

    move-result-object p1

    .line 239
    invoke-virtual {p0, p1, v1}, Lcom/android/systemui/volume/view/VolumeWarningSideViewDialog;->dispatch(Lcom/samsung/systemui/splugins/volume/VolumePanelAction;Z)V

    goto :goto_0

    .line 241
    :cond_0
    sget-object v0, Lcom/android/systemui/volume/view/VolumeWarningSideViewDialog$WarningDialogType;->MEDIA_VOLUME_LIMITER_WARNING:Lcom/android/systemui/volume/view/VolumeWarningSideViewDialog$WarningDialogType;

    if-ne p1, v0, :cond_1

    .line 242
    new-instance p1, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;->ACTION_VOLUME_LIMITER_DIALOG_CANCEL_CLICKED:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;

    invoke-direct {p1, v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;-><init>(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;)V

    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;->FROM_OUTSIDE:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;

    .line 243
    invoke-virtual {p1, v0, v2}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->setEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;Z)Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumePanelAction;

    move-result-object p1

    .line 242
    invoke-virtual {p0, p1, v1}, Lcom/android/systemui/volume/view/VolumeWarningSideViewDialog;->dispatch(Lcom/samsung/systemui/splugins/volume/VolumePanelAction;Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method private synthetic lambda$setClickListener$3(Landroid/view/View;)V
    .locals 3

    .line 249
    iget-object p1, p0, Lcom/android/systemui/volume/view/VolumeWarningSideViewDialog;->mDialogType:Lcom/android/systemui/volume/view/VolumeWarningSideViewDialog$WarningDialogType;

    sget-object v0, Lcom/android/systemui/volume/view/VolumeWarningSideViewDialog$WarningDialogType;->DEFAULT_SAFETY_VOLUME_WARNING:Lcom/android/systemui/volume/view/VolumeWarningSideViewDialog$WarningDialogType;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne p1, v0, :cond_0

    .line 250
    new-instance p1, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;->ACTION_VOLUME_SAFETY_WARNING_DIALOG_OK_CLICKED:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;

    invoke-direct {p1, v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;-><init>(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;)V

    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;->FROM_OUTSIDE:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;

    .line 251
    invoke-virtual {p1, v0, v2}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->setEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;Z)Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumePanelAction;

    move-result-object p1

    .line 250
    invoke-virtual {p0, p1, v1}, Lcom/android/systemui/volume/view/VolumeWarningSideViewDialog;->dispatch(Lcom/samsung/systemui/splugins/volume/VolumePanelAction;Z)V

    goto :goto_0

    .line 252
    :cond_0
    sget-object v0, Lcom/android/systemui/volume/view/VolumeWarningSideViewDialog$WarningDialogType;->MEDIA_VOLUME_LIMITER_WARNING:Lcom/android/systemui/volume/view/VolumeWarningSideViewDialog$WarningDialogType;

    if-ne p1, v0, :cond_1

    .line 253
    new-instance p1, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;->ACTION_VOLUME_LIMITER_DIALOG_SETTINS_CLICKED:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;

    invoke-direct {p1, v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;-><init>(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;)V

    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;->FROM_OUTSIDE:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;

    .line 254
    invoke-virtual {p1, v0, v2}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->setEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;Z)Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumePanelAction;

    move-result-object p1

    .line 253
    invoke-virtual {p0, p1, v1}, Lcom/android/systemui/volume/view/VolumeWarningSideViewDialog;->dispatch(Lcom/samsung/systemui/splugins/volume/VolumePanelAction;Z)V

    goto :goto_0

    .line 255
    :cond_1
    sget-object v0, Lcom/android/systemui/volume/view/VolumeWarningSideViewDialog$WarningDialogType;->VOLUME_CSD_100_WARNING:Lcom/android/systemui/volume/view/VolumeWarningSideViewDialog$WarningDialogType;

    if-ne p1, v0, :cond_2

    .line 256
    new-instance p1, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;->ACTION_VOLUME_CSD_100_WARNING_DIALOG_OK_CLICKED:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;

    invoke-direct {p1, v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;-><init>(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;)V

    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;->FROM_OUTSIDE:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;

    .line 257
    invoke-virtual {p1, v0, v2}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->setEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;Z)Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumePanelAction;

    move-result-object p1

    .line 256
    invoke-virtual {p0, p1, v1}, Lcom/android/systemui/volume/view/VolumeWarningSideViewDialog;->dispatch(Lcom/samsung/systemui/splugins/volume/VolumePanelAction;Z)V

    :cond_2
    :goto_0
    return-void
.end method

.method private prepareWindow()V
    .locals 3

    .line 143
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 144
    sget v1, Lcom/android/systemui/R$layout;->volume_warning_side_view_dialog:I

    invoke-virtual {p0, v1}, Landroid/app/Dialog;->setContentView(I)V

    .line 146
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p0

    .line 147
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v2, 0x20000

    or-int/2addr v1, v2

    iput v1, p0, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit16 v1, v1, 0x400

    .line 148
    iput v1, p0, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit16 v1, v1, 0x100

    .line 149
    iput v1, p0, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit16 v1, v1, 0x200

    .line 150
    iput v1, p0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/4 v1, 0x1

    .line 151
    iput v1, p0, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    const/16 v1, 0x10

    .line 152
    invoke-virtual {p0, v1}, Landroid/view/WindowManager$LayoutParams;->semAddPrivateFlags(I)V

    const-wide/16 v1, 0x1770

    .line 153
    invoke-virtual {p0, v1, v2}, Landroid/view/WindowManager$LayoutParams;->semSetScreenTimeout(J)V

    const-wide/16 v1, 0x0

    .line 154
    invoke-virtual {p0, v1, v2}, Landroid/view/WindowManager$LayoutParams;->semSetScreenDimDuration(J)V

    const-string v1, "VolumeWarningSideViewDialog"

    .line 155
    invoke-virtual {p0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 156
    invoke-virtual {v0, p0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 158
    new-instance p0, Landroid/graphics/drawable/ColorDrawable;

    const/high16 v1, -0x1000000

    invoke-direct {p0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, p0}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    const/16 p0, 0x833

    .line 159
    invoke-virtual {v0, p0}, Landroid/view/Window;->setType(I)V

    const/4 p0, -0x1

    .line 161
    invoke-virtual {v0, p0, p0}, Landroid/view/Window;->setLayout(II)V

    .line 162
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->getWindowInsetsController()Landroid/view/WindowInsetsController;

    move-result-object p0

    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    move-result v0

    invoke-interface {p0, v0}, Landroid/view/WindowInsetsController;->hide(I)V

    return-void
.end method

.method private setClickListener()V
    .locals 2

    .line 236
    sget v0, Lcom/android/systemui/R$id;->negative_button:I

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 237
    new-instance v1, Lcom/android/systemui/volume/view/VolumeWarningSideViewDialog$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/systemui/volume/view/VolumeWarningSideViewDialog$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/volume/view/VolumeWarningSideViewDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 247
    sget v0, Lcom/android/systemui/R$id;->positive_button:I

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 248
    new-instance v1, Lcom/android/systemui/volume/view/VolumeWarningSideViewDialog$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/android/systemui/volume/view/VolumeWarningSideViewDialog$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/volume/view/VolumeWarningSideViewDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private setWarningText()V
    .locals 4

    .line 166
    sget v0, Lcom/android/systemui/R$id;->volume_warning_side_view_dialog_text_view:I

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 167
    sget v1, Lcom/android/systemui/R$id;->positive_button:I

    invoke-virtual {p0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 168
    sget-object v2, Lcom/android/systemui/volume/view/VolumeWarningSideViewDialog$1;->$SwitchMap$com$android$systemui$volume$view$VolumeWarningSideViewDialog$WarningDialogType:[I

    iget-object v3, p0, Lcom/android/systemui/volume/view/VolumeWarningSideViewDialog;->mDialogType:Lcom/android/systemui/volume/view/VolumeWarningSideViewDialog$WarningDialogType;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v2, v2, v3

    const/4 v3, 0x1

    if-eq v2, v3, :cond_2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_1

    const/4 v3, 0x3

    if-eq v2, v3, :cond_0

    goto :goto_0

    .line 178
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/volume/view/VolumeWarningSideViewDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/systemui/R$string;->tw_volume_csd_100_warning:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 179
    iget-object p0, p0, Lcom/android/systemui/volume/view/VolumeWarningSideViewDialog;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x1040013

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 174
    :cond_1
    iget-object v2, p0, Lcom/android/systemui/volume/view/VolumeWarningSideViewDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/systemui/R$string;->volume_limiter_warning_text_for_cover:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 175
    iget-object p0, p0, Lcom/android/systemui/volume/view/VolumeWarningSideViewDialog;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcom/android/systemui/R$string;->volume_limiter_button_settings:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 170
    :cond_2
    iget-object v2, p0, Lcom/android/systemui/volume/view/VolumeWarningSideViewDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/systemui/R$string;->volume_safety_warning_text_for_cover:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 171
    iget-object p0, p0, Lcom/android/systemui/volume/view/VolumeWarningSideViewDialog;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcom/android/systemui/R$string;->volume_safety_warning_increase_button:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method

.method private showOpenCoverMessage()V
    .locals 4

    .line 263
    sget v0, Lcom/android/systemui/R$id;->volume_warning_side_view_dialog_text_view:I

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 264
    sget v1, Lcom/android/systemui/R$id;->volume_warning_side_view_dialog_buttons:I

    invoke-virtual {p0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 265
    sget v2, Lcom/android/systemui/R$id;->volume_warning_side_view_toast_text_view:I

    invoke-virtual {p0, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const/16 v3, 0x8

    .line 267
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 268
    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    const/4 v0, 0x0

    .line 269
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 271
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p0

    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    const/high16 v1, -0x34000000    # -3.3554432E7f

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p0, v0}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 3

    .line 70
    invoke-super {p0}, Landroid/app/Dialog;->dismiss()V

    .line 72
    iget-object v0, p0, Lcom/android/systemui/volume/view/VolumeWarningSideViewDialog;->mDialogType:Lcom/android/systemui/volume/view/VolumeWarningSideViewDialog$WarningDialogType;

    sget-object v1, Lcom/android/systemui/volume/view/VolumeWarningSideViewDialog$WarningDialogType;->DEFAULT_SAFETY_VOLUME_WARNING:Lcom/android/systemui/volume/view/VolumeWarningSideViewDialog$WarningDialogType;

    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    .line 73
    new-instance v0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;->ACTION_DISMISS_VOLUME_SAFETY_WARNING_DIALOG:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;

    invoke-direct {v0, v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;-><init>(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;)V

    .line 74
    invoke-virtual {v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumePanelAction;

    move-result-object v0

    .line 73
    invoke-virtual {p0, v0, v2}, Lcom/android/systemui/volume/view/VolumeWarningSideViewDialog;->dispatch(Lcom/samsung/systemui/splugins/volume/VolumePanelAction;Z)V

    goto :goto_0

    .line 75
    :cond_0
    sget-object v1, Lcom/android/systemui/volume/view/VolumeWarningSideViewDialog$WarningDialogType;->MEDIA_VOLUME_LIMITER_WARNING:Lcom/android/systemui/volume/view/VolumeWarningSideViewDialog$WarningDialogType;

    if-ne v0, v1, :cond_1

    .line 76
    new-instance v0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;->ACTION_DISMISS_VOLUME_LIMITER_DIALOG:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;

    invoke-direct {v0, v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;-><init>(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;)V

    .line 77
    invoke-virtual {v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumePanelAction;

    move-result-object v0

    .line 76
    invoke-virtual {p0, v0, v2}, Lcom/android/systemui/volume/view/VolumeWarningSideViewDialog;->dispatch(Lcom/samsung/systemui/splugins/volume/VolumePanelAction;Z)V

    goto :goto_0

    .line 78
    :cond_1
    sget-object v1, Lcom/android/systemui/volume/view/VolumeWarningSideViewDialog$WarningDialogType;->VOLUME_CSD_100_WARNING:Lcom/android/systemui/volume/view/VolumeWarningSideViewDialog$WarningDialogType;

    if-ne v0, v1, :cond_2

    .line 79
    new-instance v0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;->ACTION_DISMISS_VOLUME_CSD_100_WARNING_DIALOG:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;

    invoke-direct {v0, v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;-><init>(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;)V

    .line 80
    invoke-virtual {v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumePanelAction;

    move-result-object v0

    .line 79
    invoke-virtual {p0, v0, v2}, Lcom/android/systemui/volume/view/VolumeWarningSideViewDialog;->dispatch(Lcom/samsung/systemui/splugins/volume/VolumePanelAction;Z)V

    .line 83
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/volume/view/VolumeWarningSideViewDialog;->mStateObserverUnsubscriber:Lcom/samsung/systemui/splugins/volume/VolumeDisposable;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 84
    invoke-interface {v0}, Lcom/samsung/systemui/splugins/volume/VolumeDisposable;->dispose()V

    .line 85
    iput-object v1, p0, Lcom/android/systemui/volume/view/VolumeWarningSideViewDialog;->mStateObserverUnsubscriber:Lcom/samsung/systemui/splugins/volume/VolumeDisposable;

    .line 87
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/volume/view/VolumeWarningSideViewDialog;->mActionObserverUnsubscriber:Lcom/samsung/systemui/splugins/volume/VolumeDisposable;

    if-eqz v0, :cond_4

    .line 88
    invoke-interface {v0}, Lcom/samsung/systemui/splugins/volume/VolumeDisposable;->dispose()V

    .line 89
    iput-object v1, p0, Lcom/android/systemui/volume/view/VolumeWarningSideViewDialog;->mActionObserverUnsubscriber:Lcom/samsung/systemui/splugins/volume/VolumeDisposable;

    :cond_4
    return-void
.end method

.method public dispatch(Lcom/samsung/systemui/splugins/volume/VolumePanelAction;Z)V
    .locals 1

    if-eqz p2, :cond_0

    .line 102
    iget-object p2, p0, Lcom/android/systemui/volume/view/VolumeWarningSideViewDialog;->mHandlerWrapper:Lcom/android/systemui/volume/util/HandlerWrapper;

    new-instance v0, Lcom/android/systemui/volume/view/VolumeWarningSideViewDialog$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/volume/view/VolumeWarningSideViewDialog$$ExternalSyntheticLambda2;-><init>(Lcom/android/systemui/volume/view/VolumeWarningSideViewDialog;Lcom/samsung/systemui/splugins/volume/VolumePanelAction;)V

    invoke-virtual {p2, v0}, Lcom/android/systemui/volume/util/HandlerWrapper;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    .line 108
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/volume/view/VolumeWarningSideViewDialog;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/samsung/systemui/splugins/volume/VolumeObserver;

    .line 109
    invoke-interface {p2, p1}, Lcom/samsung/systemui/splugins/volume/VolumeObserver;->onChanged(Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public bridge synthetic dispatch(Ljava/lang/Object;Z)V
    .locals 0

    .line 35
    check-cast p1, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/volume/view/VolumeWarningSideViewDialog;->dispatch(Lcom/samsung/systemui/splugins/volume/VolumePanelAction;Z)V

    return-void
.end method

.method public onChanged(Lcom/samsung/systemui/splugins/volume/VolumePanelState;)V
    .locals 1

    .line 116
    sget-object v0, Lcom/android/systemui/volume/view/VolumeWarningSideViewDialog$1;->$SwitchMap$com$samsung$systemui$splugins$volume$VolumePanelState$StateType:[I

    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->getStateType()Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 129
    :pswitch_0
    invoke-direct {p0}, Lcom/android/systemui/volume/view/VolumeWarningSideViewDialog;->showOpenCoverMessage()V

    goto :goto_0

    .line 125
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/systemui/volume/view/VolumeWarningSideViewDialog;->dismiss()V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public bridge synthetic onChanged(Ljava/lang/Object;)V
    .locals 0

    .line 35
    check-cast p1, Lcom/samsung/systemui/splugins/volume/VolumePanelState;

    invoke-virtual {p0, p1}, Lcom/android/systemui/volume/view/VolumeWarningSideViewDialog;->onChanged(Lcom/samsung/systemui/splugins/volume/VolumePanelState;)V

    return-void
.end method

.method public setDependencies(Lcom/android/systemui/volume/store/VolumePanelStore;Lcom/android/systemui/volume/util/HandlerWrapper;)V
    .locals 0

    .line 62
    iput-object p1, p0, Lcom/android/systemui/volume/view/VolumeWarningSideViewDialog;->mStore:Lcom/android/systemui/volume/store/VolumePanelStore;

    .line 63
    iput-object p2, p0, Lcom/android/systemui/volume/view/VolumeWarningSideViewDialog;->mHandlerWrapper:Lcom/android/systemui/volume/util/HandlerWrapper;

    .line 64
    invoke-virtual {p1, p0}, Lcom/android/systemui/volume/store/VolumePanelStore;->subscribe(Lcom/samsung/systemui/splugins/volume/VolumeObserver;)Lcom/samsung/systemui/splugins/volume/VolumeDisposable;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/volume/view/VolumeWarningSideViewDialog;->mStateObserverUnsubscriber:Lcom/samsung/systemui/splugins/volume/VolumeDisposable;

    .line 65
    iget-object p1, p0, Lcom/android/systemui/volume/view/VolumeWarningSideViewDialog;->mStore:Lcom/android/systemui/volume/store/VolumePanelStore;

    invoke-virtual {p0, p1}, Lcom/android/systemui/volume/view/VolumeWarningSideViewDialog;->subscribe(Lcom/samsung/systemui/splugins/volume/VolumeObserver;)Lcom/samsung/systemui/splugins/volume/VolumeDisposable;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/volume/view/VolumeWarningSideViewDialog;->mActionObserverUnsubscriber:Lcom/samsung/systemui/splugins/volume/VolumeDisposable;

    return-void
.end method

.method public subscribe(Lcom/samsung/systemui/splugins/volume/VolumeObserver;)Lcom/samsung/systemui/splugins/volume/VolumeDisposable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/systemui/splugins/volume/VolumeObserver<",
            "Lcom/samsung/systemui/splugins/volume/VolumePanelAction;",
            ">;)",
            "Lcom/samsung/systemui/splugins/volume/VolumeDisposable;"
        }
    .end annotation

    .line 95
    iget-object v0, p0, Lcom/android/systemui/volume/view/VolumeWarningSideViewDialog;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 96
    new-instance v0, Lcom/samsung/systemui/splugins/volume/VolumeUnsubscriber;

    iget-object p0, p0, Lcom/android/systemui/volume/view/VolumeWarningSideViewDialog;->mObservers:Ljava/util/ArrayList;

    invoke-direct {v0, p0, p1}, Lcom/samsung/systemui/splugins/volume/VolumeUnsubscriber;-><init>(Ljava/util/ArrayList;Lcom/samsung/systemui/splugins/volume/VolumeObserver;)V

    return-object v0
.end method
