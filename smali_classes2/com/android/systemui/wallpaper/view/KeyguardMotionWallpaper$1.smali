.class Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper$1;
.super Landroid/os/AsyncTask;
.source "KeyguardMotionWallpaper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper;->updateWallpaper()V
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
.field final synthetic this$0:Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper;


# direct methods
.method constructor <init>(Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper;)V
    .locals 0

    .line 306
    iput-object p1, p0, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper$1;->this$0:Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 306
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p0

    return-object p0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 1

    .line 309
    iget-object p1, p0, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper$1;->this$0:Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper;

    invoke-static {p1}, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper;->access$100(Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper;)Ljava/util/ArrayList;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 310
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 311
    iget-object v0, p0, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper$1;->this$0:Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper;

    invoke-static {v0}, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper;->access$200(Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper;)V

    .line 312
    iget-object v0, p0, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper$1;->this$0:Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper;

    invoke-static {v0, p1}, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper;->access$302(Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 313
    iget-object p0, p0, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper$1;->this$0:Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper;

    invoke-static {p0}, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper;->access$400(Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper;)V

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 306
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper$1;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 6

    .line 320
    iget-object p1, p0, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper$1;->this$0:Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper;

    invoke-static {p1}, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper;->access$300(Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper;)Ljava/util/ArrayList;

    move-result-object p1

    const-string v0, "(Preview)"

    const-string v1, ""

    const-string v2, "KeyguardMotionWallpaper"

    if-eqz p1, :cond_7

    iget-object p1, p0, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper$1;->this$0:Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper;

    invoke-static {p1}, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper;->access$300(Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-nez p1, :cond_0

    goto/16 :goto_6

    .line 327
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper$1;->this$0:Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper;

    invoke-static {p1}, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper;->access$300(Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper$MotionBitmap;

    .line 328
    invoke-virtual {v3, v4}, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper$MotionBitmap;->setBitmapLoaded(Z)V

    goto :goto_0

    .line 331
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper$1;->this$0:Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper;

    iget-boolean v3, v3, Lcom/android/systemui/wallpaper/view/SystemUIWallpaper;->mIsPreview:Z

    if-eqz v3, :cond_2

    move-object v3, v0

    goto :goto_1

    :cond_2
    move-object v3, v1

    :goto_1
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "BITMAP LOAD FINISH "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    .line 335
    :try_start_0
    iget-object v3, p0, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper$1;->this$0:Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper;

    invoke-static {v3}, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper;->access$300(Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper;)Ljava/util/ArrayList;

    move-result-object v3

    iget-object v5, p0, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper$1;->this$0:Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper;

    invoke-static {v5}, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper;->access$300(Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper$MotionBitmap;

    invoke-virtual {v5}, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper$MotionBitmap;->clone()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper$MotionBitmap;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 336
    iget-object v3, p0, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper$1;->this$0:Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper;

    invoke-static {v3}, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper;->access$300(Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper;)Ljava/util/ArrayList;

    move-result-object v3

    iget-object v5, p0, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper$1;->this$0:Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper;

    invoke-static {v5}, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper;->access$300(Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper$MotionBitmap;

    invoke-virtual {v5}, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper$MotionBitmap;->clone()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper$MotionBitmap;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 337
    iget-object v3, p0, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper$1;->this$0:Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper;

    invoke-static {v3}, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper;->access$300(Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    .line 341
    :catch_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper$1;->this$0:Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper;

    iget-boolean v5, v5, Lcom/android/systemui/wallpaper/view/SystemUIWallpaper;->mIsPreview:Z

    if-eqz v5, :cond_3

    goto :goto_2

    :cond_3
    move-object v0, v1

    :goto_2
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "IndexOutOfBoundsException"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 339
    :catch_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper$1;->this$0:Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper;

    iget-boolean v5, v5, Lcom/android/systemui/wallpaper/view/SystemUIWallpaper;->mIsPreview:Z

    if-eqz v5, :cond_4

    goto :goto_3

    :cond_4
    move-object v0, v1

    :goto_3
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "CloneNotSupportedException"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_4
    move v0, p1

    .line 344
    :goto_5
    iget-object v1, p0, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper$1;->this$0:Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper;

    invoke-static {v1}, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper;->access$300(Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_5

    .line 345
    iget-object v1, p0, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper$1;->this$0:Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper;

    invoke-static {v1}, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper;->access$300(Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper$MotionBitmap;

    mul-int/lit8 v2, v0, 0x1e

    invoke-virtual {v1, v2}, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper$MotionBitmap;->setStayPoint(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 353
    :cond_5
    iget-object v0, p0, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper$1;->this$0:Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper;

    invoke-static {v0}, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper;->access$500(Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper;)Lcom/android/systemui/wallpaper/WallpaperResultCallback;

    move-result-object v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper$1;->this$0:Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper;

    invoke-static {v0}, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper;->access$300(Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_6

    .line 354
    iget-object v0, p0, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper$1;->this$0:Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper;

    invoke-static {v0}, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper;->access$500(Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper;)Lcom/android/systemui/wallpaper/WallpaperResultCallback;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper$1;->this$0:Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper;

    invoke-static {v1}, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper;->access$300(Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper$MotionBitmap;

    invoke-virtual {v1}, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper$MotionBitmap;->getImage()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lcom/android/systemui/wallpaper/WallpaperResultCallback;->onDelegateBitmapReady(Landroid/graphics/Bitmap;Z)V

    .line 357
    :cond_6
    iget-object p1, p0, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper$1;->this$0:Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper;

    invoke-static {p1}, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper;->access$600(Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper;)V

    .line 358
    iget-object p0, p0, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper$1;->this$0:Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper;

    invoke-static {p0}, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper;->access$700(Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-static {p0, p1, v4}, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper;->access$800(Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper;Ljava/util/ArrayList;Z)V

    return-void

    .line 322
    :cond_7
    :goto_6
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper$1;->this$0:Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper;

    iget-boolean v3, v3, Lcom/android/systemui/wallpaper/view/SystemUIWallpaper;->mIsPreview:Z

    if-eqz v3, :cond_8

    goto :goto_7

    :cond_8
    move-object v0, v1

    :goto_7
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "PARSE FAILED"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    iget-object p0, p0, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper$1;->this$0:Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper;

    const/4 p1, 0x2

    iput p1, p0, Lcom/android/systemui/wallpaper/view/SystemUIWallpaper;->mDrawingState:I

    return-void
.end method
