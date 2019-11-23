package de.schoar.hub75shifter.content;

import java.awt.Color;
import java.awt.image.BufferedImage;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.LinkedList;
import java.util.List;

import javax.annotation.PostConstruct;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import de.schoar.hub75shifter.SPIShifter;
import de.schoar.hub75shifter.SPIShifterEmptyListener;

@Service
public class TimeContentGenerator implements SPIShifterEmptyListener {

	private static final SimpleDateFormat sdf = new SimpleDateFormat("HH:mm:ss dd.MM.YYYY");

	@Autowired
	private SPIShifter spishifter;

	@PostConstruct
	private void init() {
		spishifter.register(this);
	}

	@Override
	public void empty() {
		List<BufferedImage> images = new LinkedList<BufferedImage>();
		images.add(ContentHelper.SEP);
		images.add(ContentHelper.fontWrite(sdf.format(new Date()) + " ", Color.BLACK, ContentHelper.rc()));
		spishifter.add(images);
	}

}
