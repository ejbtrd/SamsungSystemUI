.class Landroidx/appcompat/widget/SeslProgressBar$CirCleProgressDrawable$1;
.super Landroid/util/IntProperty;
.source "SeslProgressBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/widget/SeslProgressBar$CirCleProgressDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/IntProperty<",
        "Landroidx/appcompat/widget/SeslProgressBar$CirCleProgressDrawable;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Landroidx/appcompat/widget/SeslProgressBar$CirCleProgressDrawable;


# direct methods
.method constructor <init>(Landroidx/appcompat/widget/SeslProgressBar$CirCleProgressDrawable;Ljava/lang/String;)V
    .locals 0

    .line 2637
    iput-object p1, p0, Landroidx/appcompat/widget/SeslProgressBar$CirCleProgressDrawable$1;->this$1:Landroidx/appcompat/widget/SeslProgressBar$CirCleProgressDrawable;

    invoke-direct {p0, p2}, Landroid/util/IntProperty;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public get(Landroidx/appcompat/widget/SeslProgressBar$CirCleProgressDrawable;)Ljava/lang/Integer;
    .locals 0

    .line 2646
    iget p0, p1, Landroidx/appcompat/widget/SeslProgressBar$CirCleProgressDrawable;->mProgress:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2637
    check-cast p1, Landroidx/appcompat/widget/SeslProgressBar$CirCleProgressDrawable;

    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/SeslProgressBar$CirCleProgressDrawable$1;->get(Landroidx/appcompat/widget/SeslProgressBar$CirCleProgressDrawable;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public setValue(Landroidx/appcompat/widget/SeslProgressBar$CirCleProgressDrawable;I)V
    .locals 0

    .line 2640
    iput p2, p1, Landroidx/appcompat/widget/SeslProgressBar$CirCleProgressDrawable;->mProgress:I

    .line 2641
    iget-object p0, p0, Landroidx/appcompat/widget/SeslProgressBar$CirCleProgressDrawable$1;->this$1:Landroidx/appcompat/widget/SeslProgressBar$CirCleProgressDrawable;

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public bridge synthetic setValue(Ljava/lang/Object;I)V
    .locals 0

    .line 2637
    check-cast p1, Landroidx/appcompat/widget/SeslProgressBar$CirCleProgressDrawable;

    invoke-virtual {p0, p1, p2}, Landroidx/appcompat/widget/SeslProgressBar$CirCleProgressDrawable$1;->setValue(Landroidx/appcompat/widget/SeslProgressBar$CirCleProgressDrawable;I)V

    return-void
.end method
