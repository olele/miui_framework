.class public Landroid/app/ActionBar$LayoutParams;
.super Landroid/view/ViewGroup$MarginLayoutParams;
.source "ActionBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/ActionBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LayoutParams"
.end annotation


# instance fields
.field public gravity:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "layout"
        mapping = {
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = -0x1
                to = "NONE"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x0
                to = "NONE"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x30
                to = "TOP"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x50
                to = "BOTTOM"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x3
                to = "LEFT"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x5
                to = "RIGHT"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x10
                to = "CENTER_VERTICAL"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x70
                to = "FILL_VERTICAL"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x1
                to = "CENTER_HORIZONTAL"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x7
                to = "FILL_HORIZONTAL"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x11
                to = "CENTER"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x77
                to = "FILL"
            .end subannotation
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(I)V
    .registers 4
    .parameter "gravity"

    .prologue
    .line 962
    const/4 v0, -0x2

    const/4 v1, -0x1

    invoke-direct {p0, v0, v1, p1}, Landroid/app/ActionBar$LayoutParams;-><init>(III)V

    .line 963
    return-void
.end method

.method public constructor <init>(II)V
    .registers 4
    .parameter "width"
    .parameter "height"

    .prologue
    .line 952
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    .line 925
    const/4 v0, -0x1

    iput v0, p0, Landroid/app/ActionBar$LayoutParams;->gravity:I

    .line 953
    const/16 v0, 0x13

    iput v0, p0, Landroid/app/ActionBar$LayoutParams;->gravity:I

    .line 954
    return-void
.end method

.method public constructor <init>(III)V
    .registers 5
    .parameter "width"
    .parameter "height"
    .parameter "gravity"

    .prologue
    .line 957
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    .line 925
    const/4 v0, -0x1

    iput v0, p0, Landroid/app/ActionBar$LayoutParams;->gravity:I

    .line 958
    iput p3, p0, Landroid/app/ActionBar$LayoutParams;->gravity:I

    .line 959
    return-void
.end method

.method public constructor <init>(Landroid/app/ActionBar$LayoutParams;)V
    .registers 3
    .parameter "source"

    .prologue
    .line 966
    invoke-direct {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    .line 925
    const/4 v0, -0x1

    iput v0, p0, Landroid/app/ActionBar$LayoutParams;->gravity:I

    .line 968
    iget v0, p1, Landroid/app/ActionBar$LayoutParams;->gravity:I

    iput v0, p0, Landroid/app/ActionBar$LayoutParams;->gravity:I

    .line 969
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 6
    .parameter "c"
    .parameter "attrs"

    .prologue
    const/4 v2, -0x1

    .line 942
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 925
    iput v2, p0, Landroid/app/ActionBar$LayoutParams;->gravity:I

    .line 944
    sget-object v1, Lcom/android/internal/R$styleable;->ActionBar_LayoutParams:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 946
    .local v0, a:Landroid/content/res/TypedArray;
    const/4 v1, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Landroid/app/ActionBar$LayoutParams;->gravity:I

    .line 948
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 949
    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$LayoutParams;)V
    .registers 3
    .parameter "source"

    .prologue
    .line 972
    invoke-direct {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 925
    const/4 v0, -0x1

    iput v0, p0, Landroid/app/ActionBar$LayoutParams;->gravity:I

    .line 973
    return-void
.end method
