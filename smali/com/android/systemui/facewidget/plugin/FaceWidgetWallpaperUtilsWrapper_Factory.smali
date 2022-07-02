.class public final Lcom/android/systemui/facewidget/plugin/FaceWidgetWallpaperUtilsWrapper_Factory;
.super Ljava/lang/Object;
.source "FaceWidgetWallpaperUtilsWrapper_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/android/systemui/facewidget/plugin/FaceWidgetWallpaperUtilsWrapper;",
        ">;"
    }
.end annotation


# instance fields
.field private final wallpaperControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/wallpaper/KeyguardWallpaperController;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/wallpaper/KeyguardWallpaperController;",
            ">;)V"
        }
    .end annotation

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/android/systemui/facewidget/plugin/FaceWidgetWallpaperUtilsWrapper_Factory;->wallpaperControllerProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;)Lcom/android/systemui/facewidget/plugin/FaceWidgetWallpaperUtilsWrapper_Factory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/wallpaper/KeyguardWallpaperController;",
            ">;)",
            "Lcom/android/systemui/facewidget/plugin/FaceWidgetWallpaperUtilsWrapper_Factory;"
        }
    .end annotation

    .line 31
    new-instance v0, Lcom/android/systemui/facewidget/plugin/FaceWidgetWallpaperUtilsWrapper_Factory;

    invoke-direct {v0, p0}, Lcom/android/systemui/facewidget/plugin/FaceWidgetWallpaperUtilsWrapper_Factory;-><init>(Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static newInstance(Lcom/android/systemui/wallpaper/KeyguardWallpaperController;)Lcom/android/systemui/facewidget/plugin/FaceWidgetWallpaperUtilsWrapper;
    .locals 1

    .line 36
    new-instance v0, Lcom/android/systemui/facewidget/plugin/FaceWidgetWallpaperUtilsWrapper;

    invoke-direct {v0, p0}, Lcom/android/systemui/facewidget/plugin/FaceWidgetWallpaperUtilsWrapper;-><init>(Lcom/android/systemui/wallpaper/KeyguardWallpaperController;)V

    return-object v0
.end method


# virtual methods
.method public get()Lcom/android/systemui/facewidget/plugin/FaceWidgetWallpaperUtilsWrapper;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/android/systemui/facewidget/plugin/FaceWidgetWallpaperUtilsWrapper_Factory;->wallpaperControllerProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;

    invoke-static {p0}, Lcom/android/systemui/facewidget/plugin/FaceWidgetWallpaperUtilsWrapper_Factory;->newInstance(Lcom/android/systemui/wallpaper/KeyguardWallpaperController;)Lcom/android/systemui/facewidget/plugin/FaceWidgetWallpaperUtilsWrapper;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    .line 8
    invoke-virtual {p0}, Lcom/android/systemui/facewidget/plugin/FaceWidgetWallpaperUtilsWrapper_Factory;->get()Lcom/android/systemui/facewidget/plugin/FaceWidgetWallpaperUtilsWrapper;

    move-result-object p0

    return-object p0
.end method
