.class Lcom/android/keyguard/KeyguardSecPinBasedInputViewController$2;
.super Ljava/lang/Object;
.source "KeyguardSecPinBasedInputViewController.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/KeyguardSecPinBasedInputViewController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/KeyguardSecPinBasedInputViewController;


# direct methods
.method constructor <init>(Lcom/android/keyguard/KeyguardSecPinBasedInputViewController;)V
    .locals 0

    .line 95
    iput-object p1, p0, Lcom/android/keyguard/KeyguardSecPinBasedInputViewController$2;->this$0:Lcom/android/keyguard/KeyguardSecPinBasedInputViewController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConfigChanged(Landroid/content/res/Configuration;)V
    .locals 5

    .line 98
    iget v0, p1, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 99
    :goto_0
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecPinBasedInputViewController$2;->this$0:Lcom/android/keyguard/KeyguardSecPinBasedInputViewController;

    invoke-static {v1}, Lcom/android/keyguard/KeyguardSecPinBasedInputViewController;->access$000(Lcom/android/keyguard/KeyguardSecPinBasedInputViewController;)Z

    move-result v1

    const-string v2, "KeyguardSecPinBasedInputViewController"

    if-eq v1, v0, :cond_2

    .line 100
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "night mode changed : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/keyguard/KeyguardSecPinBasedInputViewController$2;->this$0:Lcom/android/keyguard/KeyguardSecPinBasedInputViewController;

    invoke-static {v3}, Lcom/android/keyguard/KeyguardSecPinBasedInputViewController;->access$000(Lcom/android/keyguard/KeyguardSecPinBasedInputViewController;)Z

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " -> "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecPinBasedInputViewController$2;->this$0:Lcom/android/keyguard/KeyguardSecPinBasedInputViewController;

    invoke-static {v1, v0}, Lcom/android/keyguard/KeyguardSecPinBasedInputViewController;->access$002(Lcom/android/keyguard/KeyguardSecPinBasedInputViewController;Z)Z

    .line 102
    sget-boolean v0, Lcom/android/systemui/LsRune;->SECURITY_OPEN_THEME:Z

    if-eqz v0, :cond_1

    .line 103
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecPinBasedInputViewController$2;->this$0:Lcom/android/keyguard/KeyguardSecPinBasedInputViewController;

    invoke-static {}, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->getInstance()Lcom/android/systemui/wallpaper/WallpaperEventNotifier;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->getCurStatusFlag()J

    move-result-wide v3

    .line 104
    invoke-static {}, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->getInstance()Lcom/android/systemui/wallpaper/WallpaperEventNotifier;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->getSemWallpaperColors()Landroid/app/SemWallpaperColors;

    move-result-object v1

    .line 103
    invoke-virtual {v0, v3, v4, v1}, Lcom/android/keyguard/KeyguardSecPinBasedInputViewController;->updateStyle(JLandroid/app/SemWallpaperColors;)V

    goto :goto_1

    :cond_1
    const-string v0, "Can\'t apply night mode! NOT supported OPEN THEME feature"

    .line 106
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    :cond_2
    :goto_1
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 111
    iget-object p1, p1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {p1}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 112
    sget-boolean p1, Lcom/android/systemui/LsRune;->SECURITY_SUB_DISPLAY_LOCK:Z

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/android/keyguard/KeyguardSecPinBasedInputViewController$2;->this$0:Lcom/android/keyguard/KeyguardSecPinBasedInputViewController;

    invoke-static {p1}, Lcom/android/keyguard/KeyguardSecPinBasedInputViewController;->access$100(Lcom/android/keyguard/KeyguardSecPinBasedInputViewController;)Landroid/graphics/Rect;

    move-result-object p1

    if-eq p1, v0, :cond_3

    const-string p1, "onConfigurationChanged()"

    .line 113
    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    iget-object p1, p0, Lcom/android/keyguard/KeyguardSecPinBasedInputViewController$2;->this$0:Lcom/android/keyguard/KeyguardSecPinBasedInputViewController;

    invoke-static {p1, v0}, Lcom/android/keyguard/KeyguardSecPinBasedInputViewController;->access$102(Lcom/android/keyguard/KeyguardSecPinBasedInputViewController;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    .line 115
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecPinBasedInputViewController$2;->this$0:Lcom/android/keyguard/KeyguardSecPinBasedInputViewController;

    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/keyguard/KeyguardSecPinBasedInputViewController;->initializeBottomContainerView(J)V

    :cond_3
    return-void
.end method
