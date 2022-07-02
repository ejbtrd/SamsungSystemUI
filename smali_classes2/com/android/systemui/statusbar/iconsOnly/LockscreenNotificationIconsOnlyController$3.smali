.class Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController$3;
.super Ljava/lang/Object;
.source "LockscreenNotificationIconsOnlyController.java"

# interfaces
.implements Lcom/android/systemui/widget/SystemUIWidgetCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;


# direct methods
.method public static synthetic $r8$lambda$sixnkx8mqSdsJUbRlk-Mmrg2MG0(Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController$3;Landroid/app/SemWallpaperColors;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController$3;->lambda$updateStyle$0(Landroid/app/SemWallpaperColors;Z)V

    return-void
.end method

.method constructor <init>(Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;)V
    .locals 0

    .line 177
    iput-object p1, p0, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController$3;->this$0:Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private synthetic lambda$updateStyle$0(Landroid/app/SemWallpaperColors;Z)V
    .locals 0

    .line 204
    iget-object p0, p0, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController$3;->this$0:Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;

    invoke-static {p0}, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;->access$100(Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;)Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyContainer;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyContainer;->updateWallpaperIcon(Landroid/app/SemWallpaperColors;Z)V

    return-void
.end method


# virtual methods
.method public updateStyle(JLandroid/app/SemWallpaperColors;)V
    .locals 6

    .line 180
    iget-object v0, p0, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController$3;->this$0:Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;->access$100(Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;)Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyContainer;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController$3;->this$0:Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;

    invoke-static {v1}, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;->access$200(Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;)Lcom/android/systemui/util/SettingsHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/util/SettingsHelper;->isColorThemeEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyContainer;->updateColorTheme(Z)V

    const-wide/16 v0, 0x2

    and-long/2addr v0, p1

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    .line 181
    iget-object v0, p0, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController$3;->this$0:Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;

    .line 182
    invoke-static {v0}, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;->access$200(Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;)Lcom/android/systemui/util/SettingsHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper;->isColorThemeEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x400

    and-long/2addr v0, p1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 183
    :goto_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController$3;->this$0:Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;

    invoke-static {v1}, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;->access$300(Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController$3;->this$0:Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;

    invoke-static {v1}, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;->access$300(Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v4, "top"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 184
    iget-object v1, p0, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController$3;->this$0:Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;

    invoke-static {v1}, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;->access$300(Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    const-string v4, "bottom"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    const-string v4, "background"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_2

    .line 186
    :cond_2
    iget-object v1, p0, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController$3;->this$0:Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;

    const-wide/16 v4, 0x200

    invoke-static {v1, v4, v5}, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;->access$402(Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;J)J

    goto :goto_2

    .line 189
    :cond_3
    iget-object v1, p0, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController$3;->this$0:Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;

    const-wide/16 v4, 0x80

    invoke-static {v1, v4, v5}, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;->access$402(Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;J)J

    :cond_4
    :goto_2
    const-wide/16 v4, 0x1

    and-long/2addr v4, p1

    cmp-long v1, v4, v2

    if-eqz v1, :cond_5

    .line 194
    iget-object v1, p0, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController$3;->this$0:Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;

    invoke-static {v1}, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;->access$200(Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;)Lcom/android/systemui/util/SettingsHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/util/SettingsHelper;->isOpenThemeLockWallpaper()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 195
    iget-object p0, p0, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController$3;->this$0:Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;

    invoke-static {p0}, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;->access$100(Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;)Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyContainer;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyContainer;->updateChildProperty()V

    goto :goto_3

    :cond_5
    if-nez v0, :cond_6

    .line 196
    iget-object v1, p0, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController$3;->this$0:Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;

    invoke-static {v1}, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;->access$400(Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;)J

    move-result-wide v4

    and-long/2addr p1, v4

    cmp-long p1, p1, v2

    if-eqz p1, :cond_a

    :cond_6
    if-nez p3, :cond_7

    .line 198
    iget-object p1, p0, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController$3;->this$0:Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;

    invoke-static {p1}, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;->access$500(Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;)Lcom/android/systemui/wallpaper/KeyguardWallpaperController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->getHints()Landroid/app/SemWallpaperColors;

    move-result-object p3

    :cond_7
    const-string p1, "NIO"

    if-eqz p3, :cond_9

    .line 202
    iget-object p2, p0, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController$3;->this$0:Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;

    invoke-static {p2}, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;->access$400(Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;)J

    move-result-wide v1

    invoke-virtual {p3, v1, v2}, Landroid/app/SemWallpaperColors;->get(J)Landroid/app/SemWallpaperColors$Item;

    move-result-object p2

    if-eqz p2, :cond_8

    .line 204
    iget-object p1, p0, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController$3;->this$0:Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;

    invoke-static {p1}, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;->access$100(Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;)Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyContainer;

    move-result-object p1

    new-instance p2, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController$3$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0, p3, v0}, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController$3$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController$3;Landroid/app/SemWallpaperColors;Z)V

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->post(Ljava/lang/Runnable;)Z

    goto :goto_3

    .line 206
    :cond_8
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p3, "updateStyle() We dont have any available item for "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController$3;->this$0:Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;

    invoke-static {p0}, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;->access$400(Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;)J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_9
    const-string/jumbo p0, "updateStyle() We dont have any available colors for now."

    .line 209
    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    :goto_3
    return-void
.end method
