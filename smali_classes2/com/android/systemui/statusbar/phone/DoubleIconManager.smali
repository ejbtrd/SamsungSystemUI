.class public abstract Lcom/android/systemui/statusbar/phone/DoubleIconManager;
.super Lcom/android/systemui/statusbar/phone/StatusBarIconController$IconManager;
.source "DoubleIconManager.java"


# instance fields
.field protected mNormalGroup:Landroid/view/ViewGroup;

.field protected mSignalGroup:Landroid/view/ViewGroup;


# virtual methods
.method protected addIcon(ILjava/lang/String;ZLcom/android/internal/statusbar/StatusBarIcon;)Lcom/android/systemui/statusbar/StatusBarIconView;
    .locals 1

    .line 71
    invoke-virtual {p0, p2, p3}, Lcom/android/systemui/statusbar/phone/StatusBarIconController$IconManager;->onCreateStatusBarIconView(Ljava/lang/String;Z)Lcom/android/systemui/statusbar/StatusBarIconView;

    move-result-object p2

    .line 72
    invoke-virtual {p2, p4}, Lcom/android/systemui/statusbar/StatusBarIconView;->set(Lcom/android/internal/statusbar/StatusBarIcon;)Z

    .line 73
    invoke-virtual {p0, p2}, Lcom/android/systemui/statusbar/phone/DoubleIconManager;->isVoLteIcon(Lcom/android/systemui/statusbar/StatusBarIconView;)Z

    move-result p3

    if-eqz p3, :cond_0

    .line 74
    iget-object p3, p0, Lcom/android/systemui/statusbar/phone/DoubleIconManager;->mNormalGroup:Landroid/view/ViewGroup;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/DoubleIconManager;->getDummyView()Lcom/android/systemui/statusbar/StatusBarIconView;

    move-result-object p4

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarIconController$IconManager;->onCreateLayoutParams()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {p3, p4, p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 75
    iget-object p3, p0, Lcom/android/systemui/statusbar/phone/DoubleIconManager;->mSignalGroup:Landroid/view/ViewGroup;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarIconController$IconManager;->onCreateLayoutParams()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object p0

    invoke-virtual {p3, p2, p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 77
    :cond_0
    iget-object p3, p0, Lcom/android/systemui/statusbar/phone/DoubleIconManager;->mNormalGroup:Landroid/view/ViewGroup;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarIconController$IconManager;->onCreateLayoutParams()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object p4

    invoke-virtual {p3, p2, p1, p4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 78
    iget-object p3, p0, Lcom/android/systemui/statusbar/phone/DoubleIconManager;->mSignalGroup:Landroid/view/ViewGroup;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/DoubleIconManager;->getDummyView()Lcom/android/systemui/statusbar/StatusBarIconView;

    move-result-object p4

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarIconController$IconManager;->onCreateLayoutParams()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object p0

    invoke-virtual {p3, p4, p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    :goto_0
    return-object p2
.end method

.method protected addMobileIcon(ILjava/lang/String;Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;)Lcom/android/systemui/statusbar/StatusBarMobileView;
    .locals 3

    .line 107
    invoke-virtual {p0, p2}, Lcom/android/systemui/statusbar/phone/StatusBarIconController$IconManager;->onCreateStatusBarMobileView(Ljava/lang/String;)Lcom/android/systemui/statusbar/StatusBarMobileView;

    move-result-object p2

    .line 108
    invoke-virtual {p2, p3}, Lcom/android/systemui/statusbar/StatusBarMobileView;->applyMobileState(Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;)V

    .line 109
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DoubleIconManager;->mNormalGroup:Landroid/view/ViewGroup;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/DoubleIconManager;->getDummyView()Lcom/android/systemui/statusbar/StatusBarIconView;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarIconController$IconManager;->onCreateLayoutParams()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 110
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DoubleIconManager;->mSignalGroup:Landroid/view/ViewGroup;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarIconController$IconManager;->onCreateLayoutParams()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v0, p2, p1, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 111
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController$IconManager;->mIsInDemoMode:Z

    if-eqz p1, :cond_0

    .line 112
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController$IconManager;->mDemoStatusIcons:Lcom/android/systemui/statusbar/phone/DemoStatusIcons;

    invoke-virtual {p0, p3}, Lcom/android/systemui/statusbar/phone/DemoStatusIcons;->addMobileView(Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;)V

    :cond_0
    return-object p2
.end method

.method protected addSignalIcon(ILjava/lang/String;Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;)Lcom/android/systemui/statusbar/StatusBarWifiView;
    .locals 3

    .line 95
    invoke-virtual {p0, p2}, Lcom/android/systemui/statusbar/phone/StatusBarIconController$IconManager;->onCreateStatusBarWifiView(Ljava/lang/String;)Lcom/android/systemui/statusbar/StatusBarWifiView;

    move-result-object p2

    .line 96
    invoke-virtual {p2, p3}, Lcom/android/systemui/statusbar/StatusBarWifiView;->applyWifiState(Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;)V

    .line 97
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DoubleIconManager;->mSignalGroup:Landroid/view/ViewGroup;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/DoubleIconManager;->getDummyView()Lcom/android/systemui/statusbar/StatusBarIconView;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarIconController$IconManager;->onCreateLayoutParams()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 98
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DoubleIconManager;->mNormalGroup:Landroid/view/ViewGroup;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarIconController$IconManager;->onCreateLayoutParams()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v0, p2, p1, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 99
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController$IconManager;->mIsInDemoMode:Z

    if-eqz p1, :cond_0

    .line 100
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController$IconManager;->mDemoStatusIcons:Lcom/android/systemui/statusbar/phone/DemoStatusIcons;

    invoke-virtual {p0, p3}, Lcom/android/systemui/statusbar/phone/DemoStatusIcons;->addDemoWifiView(Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;)V

    :cond_0
    return-object p2
.end method

.method protected destroy()V
    .locals 1

    .line 119
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DoubleIconManager;->mNormalGroup:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 120
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/DoubleIconManager;->mSignalGroup:Landroid/view/ViewGroup;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->removeAllViews()V

    return-void
.end method

.method protected forceUpdateState()V
    .locals 2

    .line 136
    invoke-super {p0}, Lcom/android/systemui/statusbar/phone/StatusBarIconController$IconManager;->forceUpdateState()V

    const/4 v0, 0x0

    .line 137
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/DoubleIconManager;->mSignalGroup:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 138
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/DoubleIconManager;->mSignalGroup:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 139
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/StatusBarIconController$IconManager;->forceUpdateSignalClusterIcons(Landroid/view/View;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected getDummyView()Lcom/android/systemui/statusbar/StatusBarIconView;
    .locals 2

    .line 63
    new-instance v0, Lcom/android/systemui/statusbar/StatusBarIconView;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController$IconManager;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/statusbar/StatusBarIconView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/16 p0, 0x8

    .line 64
    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/StatusBarIconView;->setVisibility(I)V

    return-object v0
.end method

.method protected isVoLteIcon(Lcom/android/systemui/statusbar/StatusBarIconView;)Z
    .locals 0

    if-eqz p1, :cond_0

    .line 84
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/StatusBarIconView;->getSlot()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/StatusBarIconView;->getSlot()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ims"

    invoke-virtual {p0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method protected onDensityOrFontScaleChanged()V
    .locals 5

    .line 145
    invoke-super {p0}, Lcom/android/systemui/statusbar/phone/StatusBarIconController$IconManager;->onDensityOrFontScaleChanged()V

    const/4 v0, 0x0

    .line 146
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/DoubleIconManager;->mSignalGroup:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 147
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/DoubleIconManager;->mSignalGroup:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 148
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x2

    iget v4, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController$IconManager;->mIconSize:I

    invoke-direct {v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 150
    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 151
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/StatusBarIconController$IconManager;->forceUpdateSignalClusterIcons(Landroid/view/View;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onIconAdded(ILjava/lang/String;ZLcom/android/systemui/statusbar/phone/StatusBarIconHolder;)V
    .locals 0

    .line 90
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/systemui/statusbar/phone/StatusBarIconController$IconManager;->addHolder(ILjava/lang/String;ZLcom/android/systemui/statusbar/phone/StatusBarIconHolder;)Lcom/android/systemui/statusbar/StatusIconDisplayable;

    return-void
.end method

.method protected onIconExternal(II)V
    .locals 1

    .line 125
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DoubleIconManager;->mNormalGroup:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    if-nez v0, :cond_0

    .line 127
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DoubleIconManager;->mSignalGroup:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Landroid/widget/ImageView;

    .line 129
    :cond_0
    sget-object p1, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    const/4 p1, 0x1

    .line 130
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setAdjustViewBounds(Z)V

    .line 131
    invoke-virtual {p0, v0, p2}, Lcom/android/systemui/statusbar/phone/StatusBarIconController$IconManager;->setHeightAndCenter(Landroid/widget/ImageView;I)V

    return-void
.end method

.method protected onRemoveIcon(I)V
    .locals 2

    .line 157
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController$IconManager;->mIsInDemoMode:Z

    if-eqz v0, :cond_1

    .line 158
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DoubleIconManager;->mNormalGroup:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/StatusIconDisplayable;

    if-nez v0, :cond_0

    .line 160
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DoubleIconManager;->mSignalGroup:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/StatusIconDisplayable;

    .line 162
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController$IconManager;->mDemoStatusIcons:Lcom/android/systemui/statusbar/phone/DemoStatusIcons;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/phone/DemoStatusIcons;->onRemoveIcon(Lcom/android/systemui/statusbar/StatusIconDisplayable;)V

    .line 165
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DoubleIconManager;->mNormalGroup:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->removeViewAt(I)V

    .line 166
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/DoubleIconManager;->mSignalGroup:Landroid/view/ViewGroup;

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->removeViewAt(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 168
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onRemoveIcon("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ") "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "[IndicatorGarden]DoubleIconManager"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public onSetIcon(ILcom/android/internal/statusbar/StatusBarIcon;)V
    .locals 1

    .line 174
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DoubleIconManager;->mNormalGroup:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/StatusBarIconView;

    if-nez v0, :cond_0

    .line 176
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/DoubleIconManager;->mSignalGroup:Landroid/view/ViewGroup;

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    move-object v0, p0

    check-cast v0, Lcom/android/systemui/statusbar/StatusBarIconView;

    :cond_0
    if-eqz v0, :cond_1

    .line 179
    invoke-virtual {v0, p2}, Lcom/android/systemui/statusbar/StatusBarIconView;->set(Lcom/android/internal/statusbar/StatusBarIcon;)Z

    :cond_1
    return-void
.end method

.method public onSetMobileIcon(ILcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;)V
    .locals 1

    .line 199
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DoubleIconManager;->mSignalGroup:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/StatusBarMobileView;

    if-nez v0, :cond_0

    .line 201
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DoubleIconManager;->mNormalGroup:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lcom/android/systemui/statusbar/StatusBarMobileView;

    :cond_0
    if-eqz v0, :cond_1

    .line 204
    invoke-virtual {v0, p2}, Lcom/android/systemui/statusbar/StatusBarMobileView;->applyMobileState(Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;)V

    .line 206
    :cond_1
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController$IconManager;->mIsInDemoMode:Z

    if-eqz p1, :cond_2

    .line 207
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController$IconManager;->mDemoStatusIcons:Lcom/android/systemui/statusbar/phone/DemoStatusIcons;

    invoke-virtual {p0, p2}, Lcom/android/systemui/statusbar/phone/DemoStatusIcons;->updateMobileState(Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;)V

    :cond_2
    return-void
.end method

.method public onSetSignalIcon(ILcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;)V
    .locals 1

    .line 185
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DoubleIconManager;->mNormalGroup:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/StatusBarWifiView;

    if-nez v0, :cond_0

    .line 187
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DoubleIconManager;->mSignalGroup:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lcom/android/systemui/statusbar/StatusBarWifiView;

    :cond_0
    if-eqz v0, :cond_1

    .line 190
    invoke-virtual {v0, p2}, Lcom/android/systemui/statusbar/StatusBarWifiView;->applyWifiState(Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;)V

    .line 192
    :cond_1
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController$IconManager;->mIsInDemoMode:Z

    if-eqz p1, :cond_2

    .line 193
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController$IconManager;->mDemoStatusIcons:Lcom/android/systemui/statusbar/phone/DemoStatusIcons;

    invoke-virtual {p0, p2}, Lcom/android/systemui/statusbar/phone/DemoStatusIcons;->updateWifiState(Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;)V

    :cond_2
    return-void
.end method

.method public setTint(I)V
    .locals 0

    return-void
.end method
