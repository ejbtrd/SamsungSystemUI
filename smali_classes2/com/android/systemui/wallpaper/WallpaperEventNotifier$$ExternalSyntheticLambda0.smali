.class public final synthetic Lcom/android/systemui/wallpaper/WallpaperEventNotifier$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/widget/SystemUIWidgetCallback;

.field public final synthetic f$1:J

.field public final synthetic f$2:Landroid/app/SemWallpaperColors;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/widget/SystemUIWidgetCallback;JLandroid/app/SemWallpaperColors;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/wallpaper/WallpaperEventNotifier$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/widget/SystemUIWidgetCallback;

    iput-wide p2, p0, Lcom/android/systemui/wallpaper/WallpaperEventNotifier$$ExternalSyntheticLambda0;->f$1:J

    iput-object p4, p0, Lcom/android/systemui/wallpaper/WallpaperEventNotifier$$ExternalSyntheticLambda0;->f$2:Landroid/app/SemWallpaperColors;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/wallpaper/WallpaperEventNotifier$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/widget/SystemUIWidgetCallback;

    iget-wide v1, p0, Lcom/android/systemui/wallpaper/WallpaperEventNotifier$$ExternalSyntheticLambda0;->f$1:J

    iget-object p0, p0, Lcom/android/systemui/wallpaper/WallpaperEventNotifier$$ExternalSyntheticLambda0;->f$2:Landroid/app/SemWallpaperColors;

    invoke-static {v0, v1, v2, p0}, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->$r8$lambda$8ObYAvfY_BIWPKOxoLtwhNUME1A(Lcom/android/systemui/widget/SystemUIWidgetCallback;JLandroid/app/SemWallpaperColors;)V

    return-void
.end method
