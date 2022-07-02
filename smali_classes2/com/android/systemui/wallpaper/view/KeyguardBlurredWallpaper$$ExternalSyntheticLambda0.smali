.class public final synthetic Lcom/android/systemui/wallpaper/view/KeyguardBlurredWallpaper$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/wallpaper/view/KeyguardBlurredWallpaper;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/wallpaper/view/KeyguardBlurredWallpaper;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/wallpaper/view/KeyguardBlurredWallpaper$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/wallpaper/view/KeyguardBlurredWallpaper;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/wallpaper/view/KeyguardBlurredWallpaper$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/wallpaper/view/KeyguardBlurredWallpaper;

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method
