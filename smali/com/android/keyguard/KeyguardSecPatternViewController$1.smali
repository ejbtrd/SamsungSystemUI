.class Lcom/android/keyguard/KeyguardSecPatternViewController$1;
.super Ljava/lang/Object;
.source "KeyguardSecPatternViewController.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/KeyguardSecPatternViewController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/KeyguardSecPatternViewController;


# direct methods
.method constructor <init>(Lcom/android/keyguard/KeyguardSecPatternViewController;)V
    .locals 0

    .line 117
    iput-object p1, p0, Lcom/android/keyguard/KeyguardSecPatternViewController$1;->this$0:Lcom/android/keyguard/KeyguardSecPatternViewController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConfigChanged(Landroid/content/res/Configuration;)V
    .locals 2

    .line 120
    iget p1, p1, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 p1, p1, 0x20

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 121
    :goto_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecPatternViewController$1;->this$0:Lcom/android/keyguard/KeyguardSecPatternViewController;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardSecPatternViewController;->access$000(Lcom/android/keyguard/KeyguardSecPatternViewController;)Z

    move-result v0

    if-eq v0, p1, :cond_2

    .line 122
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "night mode changed : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecPatternViewController$1;->this$0:Lcom/android/keyguard/KeyguardSecPatternViewController;

    invoke-static {v1}, Lcom/android/keyguard/KeyguardSecPatternViewController;->access$000(Lcom/android/keyguard/KeyguardSecPatternViewController;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " -> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KeyguardSecPatternViewController"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecPatternViewController$1;->this$0:Lcom/android/keyguard/KeyguardSecPatternViewController;

    invoke-static {v0, p1}, Lcom/android/keyguard/KeyguardSecPatternViewController;->access$002(Lcom/android/keyguard/KeyguardSecPatternViewController;Z)Z

    .line 124
    sget-boolean p1, Lcom/android/systemui/LsRune;->SECURITY_OPEN_THEME:Z

    if-eqz p1, :cond_1

    .line 125
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecPatternViewController$1;->this$0:Lcom/android/keyguard/KeyguardSecPatternViewController;

    invoke-static {}, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->getInstance()Lcom/android/systemui/wallpaper/WallpaperEventNotifier;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->getCurStatusFlag()J

    move-result-wide v0

    .line 126
    invoke-static {}, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->getInstance()Lcom/android/systemui/wallpaper/WallpaperEventNotifier;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->getSemWallpaperColors()Landroid/app/SemWallpaperColors;

    move-result-object p1

    .line 125
    invoke-virtual {p0, v0, v1, p1}, Lcom/android/keyguard/KeyguardSecPatternViewController;->updateStyle(JLandroid/app/SemWallpaperColors;)V

    goto :goto_1

    :cond_1
    const-string p0, "Can\'t apply night mode! NOT supported OPEN THEME feature"

    .line 128
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_1
    return-void
.end method
