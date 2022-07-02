.class public Lcom/android/systemui/widget/SystemUIWidgetUtil;
.super Ljava/lang/Object;
.source "SystemUIWidgetUtil.java"


# direct methods
.method public static convertFlag(Ljava/lang/String;)J
    .locals 4

    const-wide/16 v0, 0x200

    if-nez p0, :cond_0

    return-wide v0

    :cond_0
    const/4 v2, -0x1

    .line 30
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string/jumbo v3, "navibar"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x6

    goto :goto_0

    :sswitch_1
    const-string/jumbo v3, "none"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v2, 0x5

    goto :goto_0

    :sswitch_2
    const-string/jumbo v3, "top"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    goto :goto_0

    :cond_3
    const/4 v2, 0x4

    goto :goto_0

    :sswitch_3
    const-string/jumbo v3, "mid"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4

    goto :goto_0

    :cond_4
    const/4 v2, 0x3

    goto :goto_0

    :sswitch_4
    const-string v3, "background"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_5

    goto :goto_0

    :cond_5
    const/4 v2, 0x2

    goto :goto_0

    :sswitch_5
    const-string v3, "bottom"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_6

    goto :goto_0

    :cond_6
    const/4 v2, 0x1

    goto :goto_0

    :sswitch_6
    const-string/jumbo v3, "statusbar"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_7

    goto :goto_0

    :cond_7
    const/4 v2, 0x0

    :goto_0
    packed-switch v2, :pswitch_data_0

    const-wide/16 v0, -0x1

    return-wide v0

    :pswitch_0
    const-wide/16 v0, 0x100

    return-wide v0

    :pswitch_1
    const-wide/16 v0, 0x0

    return-wide v0

    :pswitch_2
    const-wide/16 v0, 0x20

    return-wide v0

    :pswitch_3
    const-wide/16 v0, 0x40

    :pswitch_4
    return-wide v0

    :pswitch_5
    const-wide/16 v0, 0x80

    return-wide v0

    :pswitch_6
    const-wide/16 v0, 0x10

    return-wide v0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7b64b11f -> :sswitch_6
        -0x527265d5 -> :sswitch_5
        -0x4f67aad2 -> :sswitch_4
        0x1a648 -> :sswitch_3
        0x1c155 -> :sswitch_2
        0x33af38 -> :sswitch_1
        0x672396ad -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static needsBlackComponent(JZ)Z
    .locals 0

    if-nez p2, :cond_0

    .line 75
    invoke-static {}, Lcom/android/systemui/wallpaper/WallpaperUtils;->isOpenThemeLockWallpaper()Z

    move-result p2

    if-nez p2, :cond_1

    .line 76
    :cond_0
    invoke-static {p0, p1}, Lcom/android/systemui/wallpaper/WallpaperUtils;->isWhiteKeyguardWallpaper(J)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static registerSystemUIWidgetCallback(Lcom/android/systemui/widget/SystemUIWidgetCallback;J)V
    .locals 4

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    return-void

    :cond_0
    const-wide/16 v2, -0x1

    cmp-long v2, p1, v2

    if-eqz v2, :cond_1

    const-wide/16 v2, 0x1

    or-long/2addr p1, v2

    :cond_1
    const-wide/16 v2, 0x20

    and-long/2addr v2, p1

    cmp-long v0, v2, v0

    if-eqz v0, :cond_2

    const-wide/16 v0, 0x2

    or-long/2addr p1, v0

    .line 65
    :cond_2
    invoke-static {}, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->getInstance()Lcom/android/systemui/wallpaper/WallpaperEventNotifier;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 66
    invoke-static {}, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->getInstance()Lcom/android/systemui/wallpaper/WallpaperEventNotifier;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->registerCallback(Lcom/android/systemui/widget/SystemUIWidgetCallback;J)V

    :cond_3
    return-void
.end method

.method public static registerSystemUIWidgetCallback(Lcom/android/systemui/widget/SystemUIWidgetCallback;Ljava/lang/String;)V
    .locals 2

    .line 51
    invoke-static {p1}, Lcom/android/systemui/widget/SystemUIWidgetUtil;->convertFlag(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {p0, v0, v1}, Lcom/android/systemui/widget/SystemUIWidgetUtil;->registerSystemUIWidgetCallback(Lcom/android/systemui/widget/SystemUIWidgetCallback;J)V

    return-void
.end method
