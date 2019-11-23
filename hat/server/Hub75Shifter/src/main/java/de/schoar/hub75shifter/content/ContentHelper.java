package de.schoar.hub75shifter.content;

import java.awt.Color;
import java.awt.Font;
import java.awt.Graphics;
import java.awt.GraphicsEnvironment;
import java.awt.Rectangle;
import java.awt.image.BufferedImage;
import java.awt.image.Raster;
import java.util.Random;

import javax.annotation.PostConstruct;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;

import de.schoar.hub75shifter.Hub75ShifterApplication;

@Service
public class ContentHelper {

	private static final Logger LOG = LoggerFactory.getLogger(ContentHelper.class);

	private static final Font font = new Font("DejaVu Sans", Font.BOLD, 16);

	public static BufferedImage SEP = fontWrite("| ", Color.BLACK, Color.CYAN);

	// DejaVu Math TeX Gyre
	// DejaVu Sans
	// DejaVu Sans Condensed
	// DejaVu Sans Light
	// DejaVu Sans Mono
	// DejaVu Serif
	// DejaVu Serif Condensed
	// Dialog
	// DialogInput
	// Monospaced
	// SansSerif
	// Serif

	@PostConstruct
	public static void listFonts() {
		String fonts[] = GraphicsEnvironment.getLocalGraphicsEnvironment().getAvailableFontFamilyNames();
		StringBuffer sb = new StringBuffer();
		sb.append("Available Fonts: ");				
		for (int i = 0; i < fonts.length; i++) {
			sb.append(fonts[i] + ", ");			
		}		
		LOG.info(sb.toString());
	}

	public static BufferedImage fontWrite(String msg, Color colorbg, Color colorfg) {
		
		BufferedImage bufferedImage;
		Graphics graphics;

		bufferedImage = new BufferedImage(1920, Hub75ShifterApplication.MY * 2, BufferedImage.TYPE_INT_RGB);
		graphics = bufferedImage.getGraphics();
		graphics.setFont(font);
		// int textwidth = graphics.getFontMetrics().stringWidth(msg);

		Rectangle r = graphics.getFontMetrics().getStringBounds(msg, 0, msg.length(), graphics).getBounds();
		int textwidth = Double.valueOf(r.getWidth()).intValue();
//		int textheight = Double.valueOf(r.getHeight()).intValue();
//		textheight = Double.valueOf(font.getMaxCharBounds(graphics.getFontMetrics().getFontRenderContext()).getHeight()).intValue();

		bufferedImage = new BufferedImage(textwidth, Hub75ShifterApplication.MY * 2, BufferedImage.TYPE_INT_RGB);
		graphics = bufferedImage.getGraphics();

		graphics.setColor(colorbg);
		graphics.fillRect(0, 0, textwidth, Hub75ShifterApplication.MY * 2);
		graphics.setColor(colorfg);

		graphics.setFont(font);
		graphics.drawString(msg, 0, 16 - (graphics.getFontMetrics().getDescent() / 2));

		return bufferedImage;
	}
	
	public static byte[] convert(BufferedImage bi, int x) {
		byte[] frame = new byte[Hub75ShifterApplication.MY * Hub75ShifterApplication.BPC];
		int[] rgb = new int[3];
		Raster raster = bi.getData();

		for (int y = 0; y < Hub75ShifterApplication.MY; y++) {

			for (int pwm = 0; pwm < Hub75ShifterApplication.BPC; pwm++) {
				int pow = (1 << (8 - Hub75ShifterApplication.BPC + pwm));
				int dst = y + (Hub75ShifterApplication.MY * pwm);

				rgb = raster.getPixel(x, y, rgb);
				if ((rgb[0] & pow) != 0) {
					frame[dst] |= 1;
				}
				if ((rgb[1] & pow) != 0) {
					frame[dst] |= 2;
				}
				if ((rgb[2] & pow) != 0) {
					frame[dst] |= 4;
				}

				rgb = raster.getPixel(x, Hub75ShifterApplication.MY + y, rgb);
				if ((rgb[0] & pow) != 0) {
					frame[dst] |= 8;
				}
				if ((rgb[1] & pow) != 0) {
					frame[dst] |= 16;
				}
				if ((rgb[2] & pow) != 0) {
					frame[dst] |= 32;
				}
			}

		}

		return frame;
	}

	public static Color rc() {
		int rnd = new Random().nextInt(8);

		if (rnd == 0) {
			return Color.BLUE;
		}
		if (rnd == 1) {
			return Color.CYAN;
		}
		if (rnd == 2) {
			return Color.GREEN;
		}
		if (rnd == 3) {
			return Color.MAGENTA;
		}
		if (rnd == 4) {
			return Color.ORANGE;
		}
		if (rnd == 5) {
			return Color.PINK;
		}
		if (rnd == 6) {
			return Color.RED;
		}
		if (rnd == 7) {
			return Color.YELLOW;
		}

//		if (rnd == 8) {
//			return Color.LIGHT_GRAY;
//		}
//		if (rnd == 9) {
//			return Color.GRAY;
//		}
//		if (rnd == 10) {
//			return Color.DARK_GRAY;
//		}

		return Color.WHITE;
	}
}
