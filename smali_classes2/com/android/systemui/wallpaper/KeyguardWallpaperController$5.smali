.class Lcom/android/systemui/wallpaper/KeyguardWallpaperController$5;
.super Ljava/lang/Object;
.source "KeyguardWallpaperController.java"

# interfaces
.implements Lcom/android/systemui/wallpaper/MultiPackDispatcher$OnApplyMultipackListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->startMultipack(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/wallpaper/KeyguardWallpaperController;


# direct methods
.method constructor <init>(Lcom/android/systemui/wallpaper/KeyguardWallpaperController;)V
    .locals 0

    .line 1255
    iput-object p1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController$5;->this$0:Lcom/android/systemui/wallpaper/KeyguardWallpaperController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMultipackApplied(I)V
    .locals 2

    .line 1258
    iget-object p0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController$5;->this$0:Lcom/android/systemui/wallpaper/KeyguardWallpaperController;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onMultipackApplied: reason = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/android/systemui/wallpaper/MultiPackDispatcher;->getStringReason(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->access$600(Lcom/android/systemui/wallpaper/KeyguardWallpaperController;Ljava/lang/String;)V

    return-void
.end method
