.class public Lcom/android/systemui/volume/util/SemWindowManagerWrapper;
.super Ljava/lang/Object;
.source "SemWindowManagerWrapper.java"


# instance fields
.field private mFolderStateListener:Lcom/samsung/android/view/SemWindowManager$FoldStateListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public capturedBlurScreenshot(Landroid/content/Context;Landroid/graphics/Rect;II)Landroid/graphics/Bitmap;
    .locals 18

    .line 50
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object v0

    .line 52
    invoke-static {}, Lcom/samsung/android/view/SemWindowManager;->getInstance()Lcom/samsung/android/view/SemWindowManager;

    move-result-object v1

    .line 53
    invoke-virtual {v0}, Landroid/view/Display;->getDisplayId()I

    move-result v2

    .line 60
    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    mul-int/lit8 v9, v0, 0x5a

    const/16 v3, 0x7f4

    const/4 v4, 0x1

    const/4 v8, 0x1

    const/4 v10, 0x1

    move-object/from16 v5, p2

    move/from16 v6, p3

    move/from16 v7, p4

    .line 52
    invoke-virtual/range {v1 .. v10}, Lcom/samsung/android/view/SemWindowManager;->screenshot(IIZLandroid/graphics/Rect;IIZIZ)Landroid/graphics/Bitmap;

    move-result-object v11

    if-nez v11, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 67
    :cond_0
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 68
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getRotation()I

    move-result v1

    mul-int/lit8 v1, v1, 0x5a

    rsub-int v1, v1, 0x168

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->postRotate(F)Z

    const/4 v12, 0x0

    const/4 v13, 0x0

    .line 69
    invoke-virtual {v11}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v14

    invoke-virtual {v11}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v15

    const/16 v17, 0x1

    move-object/from16 v16, v0

    invoke-static/range {v11 .. v17}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public isFolded()Z
    .locals 0

    .line 24
    invoke-static {}, Lcom/samsung/android/view/SemWindowManager;->getInstance()Lcom/samsung/android/view/SemWindowManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/view/SemWindowManager;->isFolded()Z

    move-result p0

    return p0
.end method

.method public registerFoldStateListener(Ljava/util/function/Consumer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 28
    new-instance v0, Lcom/android/systemui/volume/util/SemWindowManagerWrapper$1;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/volume/util/SemWindowManagerWrapper$1;-><init>(Lcom/android/systemui/volume/util/SemWindowManagerWrapper;Ljava/util/function/Consumer;)V

    iput-object v0, p0, Lcom/android/systemui/volume/util/SemWindowManagerWrapper;->mFolderStateListener:Lcom/samsung/android/view/SemWindowManager$FoldStateListener;

    .line 39
    invoke-static {}, Lcom/samsung/android/view/SemWindowManager;->getInstance()Lcom/samsung/android/view/SemWindowManager;

    move-result-object p1

    iget-object p0, p0, Lcom/android/systemui/volume/util/SemWindowManagerWrapper;->mFolderStateListener:Lcom/samsung/android/view/SemWindowManager$FoldStateListener;

    const/4 v0, 0x0

    invoke-virtual {p1, p0, v0}, Lcom/samsung/android/view/SemWindowManager;->registerFoldStateListener(Lcom/samsung/android/view/SemWindowManager$FoldStateListener;Landroid/os/Handler;)V

    return-void
.end method

.method public unregisterFoldStateListener()V
    .locals 2

    .line 43
    iget-object v0, p0, Lcom/android/systemui/volume/util/SemWindowManagerWrapper;->mFolderStateListener:Lcom/samsung/android/view/SemWindowManager$FoldStateListener;

    if-eqz v0, :cond_0

    .line 44
    invoke-static {}, Lcom/samsung/android/view/SemWindowManager;->getInstance()Lcom/samsung/android/view/SemWindowManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/volume/util/SemWindowManagerWrapper;->mFolderStateListener:Lcom/samsung/android/view/SemWindowManager$FoldStateListener;

    invoke-virtual {v0, v1}, Lcom/samsung/android/view/SemWindowManager;->unregisterFoldStateListener(Lcom/samsung/android/view/SemWindowManager$FoldStateListener;)V

    const/4 v0, 0x0

    .line 45
    iput-object v0, p0, Lcom/android/systemui/volume/util/SemWindowManagerWrapper;->mFolderStateListener:Lcom/samsung/android/view/SemWindowManager$FoldStateListener;

    :cond_0
    return-void
.end method
