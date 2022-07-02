.class public final synthetic Lcom/android/systemui/wallpaper/video/VideoPlayer$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/wallpaper/video/VideoPlayer;

.field public final synthetic f$1:Landroid/content/res/AssetFileDescriptor;

.field public final synthetic f$2:Ljava/lang/String;

.field public final synthetic f$3:Landroid/net/Uri;

.field public final synthetic f$4:Landroid/view/Surface;

.field public final synthetic f$5:Lcom/samsung/android/media/SemMediaPlayer$OnInfoListener;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/wallpaper/video/VideoPlayer;Landroid/content/res/AssetFileDescriptor;Ljava/lang/String;Landroid/net/Uri;Landroid/view/Surface;Lcom/samsung/android/media/SemMediaPlayer$OnInfoListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/wallpaper/video/VideoPlayer$$ExternalSyntheticLambda1;->f$0:Lcom/android/systemui/wallpaper/video/VideoPlayer;

    iput-object p2, p0, Lcom/android/systemui/wallpaper/video/VideoPlayer$$ExternalSyntheticLambda1;->f$1:Landroid/content/res/AssetFileDescriptor;

    iput-object p3, p0, Lcom/android/systemui/wallpaper/video/VideoPlayer$$ExternalSyntheticLambda1;->f$2:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/systemui/wallpaper/video/VideoPlayer$$ExternalSyntheticLambda1;->f$3:Landroid/net/Uri;

    iput-object p5, p0, Lcom/android/systemui/wallpaper/video/VideoPlayer$$ExternalSyntheticLambda1;->f$4:Landroid/view/Surface;

    iput-object p6, p0, Lcom/android/systemui/wallpaper/video/VideoPlayer$$ExternalSyntheticLambda1;->f$5:Lcom/samsung/android/media/SemMediaPlayer$OnInfoListener;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget-object v0, p0, Lcom/android/systemui/wallpaper/video/VideoPlayer$$ExternalSyntheticLambda1;->f$0:Lcom/android/systemui/wallpaper/video/VideoPlayer;

    iget-object v1, p0, Lcom/android/systemui/wallpaper/video/VideoPlayer$$ExternalSyntheticLambda1;->f$1:Landroid/content/res/AssetFileDescriptor;

    iget-object v2, p0, Lcom/android/systemui/wallpaper/video/VideoPlayer$$ExternalSyntheticLambda1;->f$2:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/systemui/wallpaper/video/VideoPlayer$$ExternalSyntheticLambda1;->f$3:Landroid/net/Uri;

    iget-object v4, p0, Lcom/android/systemui/wallpaper/video/VideoPlayer$$ExternalSyntheticLambda1;->f$4:Landroid/view/Surface;

    iget-object v5, p0, Lcom/android/systemui/wallpaper/video/VideoPlayer$$ExternalSyntheticLambda1;->f$5:Lcom/samsung/android/media/SemMediaPlayer$OnInfoListener;

    invoke-static/range {v0 .. v5}, Lcom/android/systemui/wallpaper/video/VideoPlayer;->$r8$lambda$Ef83Cc9th1M3xxecjLJY_NgGS6Q(Lcom/android/systemui/wallpaper/video/VideoPlayer;Landroid/content/res/AssetFileDescriptor;Ljava/lang/String;Landroid/net/Uri;Landroid/view/Surface;Lcom/samsung/android/media/SemMediaPlayer$OnInfoListener;)V

    return-void
.end method
