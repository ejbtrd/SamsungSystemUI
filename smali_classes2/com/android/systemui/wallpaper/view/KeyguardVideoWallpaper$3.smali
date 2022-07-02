.class Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper$3;
.super Landroid/os/AsyncTask;
.source "KeyguardVideoWallpaper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->updateDrawable(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;


# direct methods
.method constructor <init>(Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;)V
    .locals 0

    .line 691
    iput-object p1, p0, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper$3;->this$0:Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 691
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper$3;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p0

    return-object p0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 3

    .line 694
    iget-object p1, p0, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper$3;->this$0:Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;

    invoke-static {p1}, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->access$500(Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;)Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper$3;->this$0:Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;

    invoke-static {v0}, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->access$600(Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper$3;->this$0:Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;

    invoke-static {v1}, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->access$700(Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper$3;->this$0:Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;

    invoke-static {v2}, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->access$800(Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;)Landroid/net/Uri;

    move-result-object v2

    invoke-static {p1, v0, v1, v2}, Lcom/android/systemui/wallpaper/WallpaperUtils;->getVideoFrame(Landroid/content/Context;Landroid/content/res/AssetFileDescriptor;Ljava/lang/String;Landroid/net/Uri;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 695
    iget-object v0, p0, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper$3;->this$0:Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;

    const v1, 0x3e99999a    # 0.3f

    invoke-virtual {v0, p1, v1}, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->resizeThumbnailBitmap(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 697
    iget-object p0, p0, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper$3;->this$0:Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;

    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v0, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-static {p0, v0}, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->access$902(Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 691
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper$3;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 2

    .line 704
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 705
    invoke-virtual {p0}, Landroid/os/AsyncTask;->isCancelled()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 709
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper$3;->this$0:Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;

    invoke-static {p1}, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->access$200(Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;)Landroid/widget/ImageView;

    move-result-object p1

    if-nez p1, :cond_1

    .line 710
    iget-object p1, p0, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper$3;->this$0:Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;

    new-instance v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper$3;->this$0:Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;

    invoke-static {v1}, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->access$500(Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    invoke-static {p1, v0}, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->access$202(Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;Landroid/widget/ImageView;)Landroid/widget/ImageView;

    .line 712
    :cond_1
    iget-object p1, p0, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper$3;->this$0:Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;

    invoke-static {p1}, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->access$200(Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;)Landroid/widget/ImageView;

    move-result-object p1

    iget-object v0, p0, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper$3;->this$0:Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;

    invoke-static {v0}, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->access$900(Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 713
    iget-object p1, p0, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper$3;->this$0:Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->invalidate()V

    .line 715
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "onPostExecute: mDrawable = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper$3;->this$0:Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;

    invoke-static {p0}, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->access$900(Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "KeyguardVideoWallpaper"

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
